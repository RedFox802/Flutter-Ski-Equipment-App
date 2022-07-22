import 'package:equipment/features/authentication_page/domain/state/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../questionnaire_page/date/questionnaire_firebase_repositoty.dart';
import '../data/user_id_storage.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _phoneAuth = FirebaseAuth.instance;
  final UserIdStorage _userIdStorage = UserIdStorage();
  final QuestionnaireFirebaseRepository _questionnaireRepository =
  QuestionnaireFirebaseRepository();

  AuthCubit()
      : super(
          const AuthState(),
        );

  Future<void> verifyPhone(String phone) async {
    try {
      await _phoneAuth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _phoneAuth.signInWithCredential(credential).then(
            (value) async {
              if (value.user != null) {
                await _userIdStorage.saveUserId(value.user!.uid);
                emit(
                    state.copyWith(phone: value.user!.phoneNumber, auth: true));
              }
            },
          );
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(state.copyWith(error: true));
        },
        codeSent: (String verificationId, int? resendToken) {
          emit(state.copyWith(verificationId: verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          emit(state.copyWith(verificationId: verificationId));
        },
      );
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }

  Future<void> sighIn(String pin) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: state.verificationId, smsCode: pin);

      await _phoneAuth.signInWithCredential(credential).then(
        (value) async {
          if (value.user != null) {
            await _userIdStorage.saveUserId(value.user!.uid);
            emit(state.copyWith(phone: value.user!.phoneNumber, auth: true));
          } else {
            emit(state.copyWith(error: true));
          }
        },
      );
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }

  Future<void> signOut() async {
    try {
      await _phoneAuth.signOut();
    } catch (e) {}
  }

  Future<void> deleteAccount() async {
    try {
      emit(state.copyWith(loading: true));
      await _questionnaireRepository.deleteAll();
      await _phoneAuth.signOut();
      emit(state.copyWith(loading: false));
    } catch (e) {}
  }
}
