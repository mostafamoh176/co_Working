import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  static late SharedPreferences _sharedPreferences;

  static Future<void> intial() async =>
      _sharedPreferences = await SharedPreferences.getInstance();

  static Future<void> setData(
      {required email, required ApiToken, required uid}) async {
    _sharedPreferences.setString("email", email);
    _sharedPreferences.setString("ApiToken", ApiToken);
    _sharedPreferences.setString("UID Key", uid);
  }

  static bool get isLogged => _sharedPreferences.containsKey("ApiToken");

  static String get emailSh => _sharedPreferences.getString("email")!;

  static String get ApiToken => _sharedPreferences.getString("ApiToken")!;

  static String get uid => _sharedPreferences.getString("UID Key")!;
}
