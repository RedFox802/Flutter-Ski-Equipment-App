import 'package:equipment/features/authentication_page/domain/state/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _phoneAuth = FirebaseAuth.instance;

  AuthCubit()
      : super(
          const AuthState(),
        );

  Future<void> verifyPhone(String phone) async {
    try {
      await _phoneAuth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _phoneAuth.signInWithCredential(credential).then((value) {
            if (value.user != null) {
              emit(state.copyWith(auth: true));
            }
          });
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

      await _phoneAuth.signInWithCredential(credential).then((value) {
        if (value.user != null) {
          emit(state.copyWith(auth: true));
        } else {
          emit(state.copyWith(error: true));
        }
      });
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }
}
