import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/phone_storage.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final PhoneStorage _phoneStorage = PhoneStorage();

  LoginCubit()
      : super(
          const LoginState(),
        );

  Future<void> loadPhone() async {
    try {
      String phone = await _phoneStorage.loadPhone();
      log('инит вот в кубите'+phone);
      emit(state.copyWith(phone: phone));
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }

  Future<void> savePhone(String phone) async {
    try {
      await _phoneStorage.savePhone(phone);
      log('сохр'+state.phone);
      emit(state.copyWith(phone: phone));
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }
}
