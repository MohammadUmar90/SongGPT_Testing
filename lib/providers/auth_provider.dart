import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void login(String email, String password) {
    // Implement your login logic here
  }

  void register(String email, String password, String confirmPassword) {
    // Implement your registration logic here
  }
}
