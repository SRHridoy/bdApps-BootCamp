import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  static const String loginKey = "isLogin";
  static const String usernameKey = "username";
  static const String passwordKey = "password";

  // Save Login Data
  Future<void> saveLoginData({
    required String username,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(loginKey, true);
    await prefs.setString(usernameKey, username);
    await prefs.setString(passwordKey, password);
  }

  // Login Status
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(loginKey) ?? false;
  }

  // Get Username
  Future<String> getUsername() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(usernameKey) ?? "";
  }

  // Get Password
  Future<String> getPassword() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(passwordKey) ?? "";
  }

  // Logout
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(loginKey);
    await prefs.remove(usernameKey);
    await prefs.remove(passwordKey);
  }
}
