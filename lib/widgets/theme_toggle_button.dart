// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../app_state.dart';

// class ThemeToggleButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context);

//     return IconButton(
//       icon: Icon(appState.themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode),
//       onPressed: () {
//         appState.toggleTheme();
//       },
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return IconButton(
      icon: Icon(appState.themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode),
      onPressed: () {
        appState.toggleTheme();
      },
    );
  }
}
