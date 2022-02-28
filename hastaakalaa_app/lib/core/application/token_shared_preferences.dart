import 'package:shared_preferences/shared_preferences.dart';

class TokenSharedPrefernces {
  TokenSharedPrefernces._privateConstructor();

  static final TokenSharedPrefernces instance =
      TokenSharedPrefernces._privateConstructor();

  setTokenValue(String key, String value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }
}
