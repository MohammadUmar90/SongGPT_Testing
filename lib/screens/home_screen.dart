// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import '../app_state.dart';
// // import '../widgets/theme_toggle_button.dart';

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Song GPT'),
// //         actions: [
// //           ThemeToggleButton(),
// //         ],
// //       ),
// //       body: Center(
// //         child: Text('Welcome to the Music App!'),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:songgpt/providers/app_state.dart';
// import '../providers/category_provider.dart';
// import '../widgets/song_category.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final categories = Provider.of<CategoryProvider>(context).categories;

//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.person), // User icon instead of a logo
//         title: Text('Song GPT'),
//         actions: [
//           PopupMenuButton(
//             icon: Icon(Icons.menu),
//             itemBuilder: (context) => [
//               PopupMenuItem(
//                 child: Row(
//                   children: [
//                     Text('Toggle Theme'),
//                     Spacer(),
//                     Icon(Icons.dark_mode),
//                   ],
//                 ),
//                 onTap: () {
//                   Provider.of<AppState>(context, listen: false).toggleTheme();
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0), // Global padding
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // 2 columns of categories
//             childAspectRatio: 3 / 2, // Adjust aspect ratio
//             crossAxisSpacing: 8.0, // Space between columns
//             mainAxisSpacing: 8.0, // Space between rows
//           ),
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             final category = categories[index];
//             return SongCategory(
//               name: category['name'],
//               image: category['image'],
//               count: category['count'],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:songgpt/providers/app_state.dart';
// import '../providers/category_provider.dart';
// import '../widgets/song_category.dart';


// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final categories = Provider.of<CategoryProvider>(context).categories;

//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.music_note, // Music icon for the app
//           color: Colors.purple, // Purple color for the music icon
//           size: 28, // Adjust the size if necessary
//         ),
//         title: Text(
//           'Song GPT',
//           style: TextStyle(
//             color: Colors.purple, // Purple color for heading text
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           PopupMenuButton(
//             icon: Icon(Icons.menu), // Default color for menu icon
//             itemBuilder: (context) => [
//               PopupMenuItem(
//                 child: Row(
//                   children: [
//                     Text(
//                       'Toggle Theme',
//                       style: TextStyle(color: Colors.purple), // Purple text for menu item
//                     ),
//                     Spacer(),
//                     Icon(Icons.dark_mode, color: Colors.purple), // Purple icon for theme toggle
//                   ],
//                 ),
//                 onTap: () {
//                   Provider.of<AppState>(context, listen: false).toggleTheme();
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 8.0,
//             mainAxisSpacing: 8.0,
//           ),
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             final category = categories[index];
//             return SongCategory(
//               name: category['name'],
//               image: category['image'],
//               count: category['count'],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songgpt/providers/app_state.dart';
import 'package:songgpt/providers/category_provider.dart';

import '../widgets/song_category.dart';
import '../widgets/full_screen_menu.dart'; // Full-screen menu widget


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final categories = Provider.of<CategoryProvider>(context).categories;

    return Scaffold(
      body: Stack(
        children: [
          // Full screen menu overlay - Positioned behind the main content
          if (appState.isDrawerOpen) FullScreenMenu(),
          
          // Main content with rotation and translation - Positioned above the overlay
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: Matrix4.translationValues(
              appState.isDrawerOpen ? -295 : 0,
              appState.isDrawerOpen ? 10 : 0,
              0
            )..rotateZ(appState.isDrawerOpen ? 0.12 : 0), // Rotate to create the diagonal overlay effect
            curve: Curves.easeInOut,
            child: Scaffold(
              appBar: AppBar(
                leading: Icon(
                  Icons.music_note,
                  color: Colors.purple,
                  size: 28,
                ),
                title: Text(
                  'Song GPT',
                  style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    icon: Icon(appState.isDrawerOpen ? Icons.close : Icons.menu),
                    onPressed: () => appState.toggleDrawer(),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return SongCategory(
                      name: category['name'],
                      image: category['image'],
                      count: category['count'],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}