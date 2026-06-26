import 'package:flutter/material.dart';
import 'package:login_provider_shared_pref_go/shared_pref_manager/shared_pref_manager.dart';

class AuthProvider extends ChangeNotifier {
  final SharedPrefManager _service = SharedPrefManager();

  bool isLoggedIn = false;

  String username = "";

  String password = "";

  Future<void> loadUser() async {
    isLoggedIn = await _service.isLoggedIn();

    username = await _service.getUsername();

    password = await _service.getPassword();

    notifyListeners();
  }

  // Login
  Future<void> login({
    required String username,
    required String password,
  }) async {
    await _service.saveLoginData(username: username, password: password);

    isLoggedIn = true;

    this.username = username;

    this.password = password;

    notifyListeners();
  }

  // Logout
  Future<void> logout() async {
    await _service.logout();

    isLoggedIn = false;

    username = "";

    password = "";

    notifyListeners();
  }
}
