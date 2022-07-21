import 'dart:math';

class AppRandom {
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static final Random _rnd = Random();

  static String getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  static String createId() {
    return getRandomString(5) +
        (_rnd.nextInt(9999) + 1).toString() +
        getRandomString(5) +
        (_rnd.nextInt(9999) + 1).toString();
  }
}
