import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserIdStorage{

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  final AndroidOptions androidOptions = const AndroidOptions(resetOnError: true);

  Future<void> saveUserId(String id) async {
    try {
      await _secureStorage.write(
          key: 'userId', value: id, aOptions: androidOptions);
    } catch (_) {}
  }

  Future<String?> loadUserId() async {
    try {
      return await _secureStorage.read(
          key: 'userId', aOptions: androidOptions);
    } catch (_) {
      return Future(() => null);
    }
  }

  Future<void> deleteUserId() async {
    try {
      return await _secureStorage.delete(
          key: 'userId', aOptions: androidOptions);
    } catch (_) {
      return Future(() => null);
    }
  }
}
