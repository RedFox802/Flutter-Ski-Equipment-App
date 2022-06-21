import 'package:shared_preferences/shared_preferences.dart';

class PhoneStorage {
  Future<String> loadPhone() async {
    try {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

      return sharedPreferences.containsKey('phone')
          ? sharedPreferences.getString('phone') ?? ''
          : '';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> savePhone(String phone) async {
    try {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      sharedPreferences.setString('phone', phone);
    } catch (e) {
      rethrow;
    }
  }
}
