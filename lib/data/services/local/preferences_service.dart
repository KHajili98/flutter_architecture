import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static PreferencesService? _instance;
  static SharedPreferences? _prefs;

  PreferencesService._();

  static Future<PreferencesService> get instance async {
    _instance ??= PreferencesService._();

    _prefs = await SharedPreferences.getInstance();

    return _instance!;
  }

  //language------------------------------------------------------------
  String get getLocale => _prefs!.getString('language') ?? 'en';

  void setLocale(String name) {
    _prefs!.setString('language', name);
  }
  //language------------------------------------------------------------

  //token ---------------------------------------------------------------
  String get getToken => _prefs!.getString('token') ?? '';

  void setToken(String token) {
    _prefs!.setString('token', token);
  }

  void removeToken() {
    _prefs!.remove('token');
  }
  //token ---------------------------------------------------------------

}
