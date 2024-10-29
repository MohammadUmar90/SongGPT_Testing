//   import 'package:flutter/material.dart';

// class AppState extends ChangeNotifier {
//   ThemeMode _themeMode = ThemeMode.system;

//   ThemeMode get themeMode => _themeMode;

//   void toggleTheme() {
//     _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
// }
// import 'package:flutter/material.dart';

// class AppState extends ChangeNotifier {
//   ThemeMode _themeMode = ThemeMode.system;

//   ThemeMode get themeMode => _themeMode;

//   void toggleTheme() {
//     _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  // Existing properties
  bool isDrawerOpen = false;
  ThemeMode themeMode = ThemeMode.dark;

  // New property for selected menu item
  String selectedMenuItem = 'Explore';

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    notifyListeners();
  }

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void setSelectedMenuItem(String menuItem) {
    selectedMenuItem = menuItem;
    notifyListeners();
  }

  void closeDrawer() {
    isDrawerOpen = false;
    notifyListeners();
  }
}