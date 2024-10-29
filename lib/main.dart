// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'app_state.dart';
// import 'screens/home_screen.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => AppState(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppState>(
//       builder: (context, appState, child) {
//         return MaterialApp(
//           title: 'Music App',
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           themeMode: appState.themeMode,
//           home: AnimatedSplashScreen(
//             splash: Icons.music_note,
//             duration: 3000,
//             splashTransition: SplashTransition.scaleTransition,
//             backgroundColor: Colors.blue,
//             nextScreen: HomeScreen(),
//           ),
//         );
//       },
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'app_state.dart';
// import 'config/theme/theme.dart';
// import 'screens/splash_screen.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => AppState(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppState>(
//       builder: (context, appState, child) {
//         return MaterialApp(
//           title: 'Song GPT',
//           theme: lightTheme,
//           darkTheme: darkTheme,
//           themeMode: appState.themeMode,
//           home: SplashScreen(),
//         );
//       },
//     );
//   }
// }


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songgpt/providers/auth_provider.dart';
import 'providers/app_state.dart';
import 'screens/home_screen.dart';
import 'providers/category_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppState()),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()), // Add CategoryProvider
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Song GPT',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: appState.themeMode,
          home: HomeScreen(),
        );
      },
    );
  }
}
