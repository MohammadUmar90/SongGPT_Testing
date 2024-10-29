import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songgpt/providers/app_state.dart';
import 'package:songgpt/screens/login_screen.dart';
import 'package:songgpt/utils/custom_router.dart';

// class FullScreenMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context, listen: false);
//     final isDarkMode = appState.themeMode == ThemeMode.dark;
//     final selectedColor = Colors.purple;

//     // Define background and text colors based on the theme mode
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;

//     return Container(
//       color: backgroundColor.withOpacity(0.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end, // Right-align the menu items
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 32.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   // Menu items with conditional text color
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     trailing: Icon(Icons.search, color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor),
//                     title: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         'Explore',
//                         style: TextStyle(
//                           color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                         ),
//                       ),
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Explore'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     trailing: Icon(Icons.create, color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor),
//                     title: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         'Create Song',
//                         style: TextStyle(
//                           color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                         ),
//                       ),
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Create Song'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     trailing: Icon(Icons.info, color: appState.selectedMenuItem == 'About' ? selectedColor : textColor),
//                     title: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         'About',
//                         style: TextStyle(
//                           color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                         ),
//                       ),
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('About'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom controls: Login/Signup button and Theme toggle icon
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: selectedColor,
//                     foregroundColor: Colors.white, // Set button text color to white
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   icon: Icon(Icons.person),
//                   label: Text('Login/Signup'),
//                   onPressed: () => appState.closeDrawer(),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
//                     color: textColor,
//                   ),
//                   onPressed: () {
//                     appState.toggleTheme(); // Theme toggle functionality
//                     appState.closeDrawer();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class FullScreenMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context, listen: false);
//     final isDarkMode = appState.themeMode == ThemeMode.dark;
//     final selectedColor = Colors.purple;

//     // Define background and text colors based on the theme mode
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;

//     return Container(
//       color: backgroundColor.withOpacity(0.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end, // Right-align the menu items
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 32.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   // Menu items with icon first, aligned to the right
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(Icons.search, color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor),
//                         SizedBox(width: 8), // Spacing between icon and text
//                         Text(
//                           'Explore',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Explore'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(Icons.create, color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor),
//                         SizedBox(width: 8),
//                         Text(
//                           'Create Song',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Create Song'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(Icons.info, color: appState.selectedMenuItem == 'About' ? selectedColor : textColor),
//                         SizedBox(width: 8),
//                         Text(
//                           'About',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('About'); // Set selected item in app state
//                       appState.closeDrawer();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom controls: Login/Signup button and Theme toggle icon
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: selectedColor,
//                     foregroundColor: Colors.white, // Set button text color to white
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   icon: Icon(Icons.person),
//                   label: Text('Login/Signup'),
//                   onPressed: () => appState.closeDrawer(),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
//                     color: textColor,
//                   ),
//                   onPressed: () {
//                     appState.toggleTheme(); // Theme toggle functionality
//                     appState.closeDrawer();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class FullScreenMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context, listen: false);
//     final isDarkMode = appState.themeMode == ThemeMode.dark;
//     final selectedColor = Colors.purple;

//     // Define background and text colors based on the theme mode
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;

//     return Container(
//       color: backgroundColor.withOpacity(0.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch, // Fill the width of the container
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 32.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   // Menu items with icon first, aligned to the right
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space items out evenly
//                       children: [
//                         Expanded(child: Container()), // Pushes items to the right
//                         Icon(Icons.search, color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor),
//                         SizedBox(width: 8), // Spacing between icon and text
//                         Text(
//                           'Explore',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Explore');
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(child: Container()),
//                         Icon(Icons.create, color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor),
//                         SizedBox(width: 8),
//                         Text(
//                           'Create Song',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('Create Song');
//                       appState.closeDrawer();
//                     },
//                   ),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(child: Container()),
//                         Icon(Icons.info, color: appState.selectedMenuItem == 'About' ? selectedColor : textColor),
//                         SizedBox(width: 8),
//                         Text(
//                           'About',
//                           style: TextStyle(
//                             color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     onTap: () {
//                       appState.setSelectedMenuItem('About');
//                       appState.closeDrawer();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom controls: Login/Signup button and Theme toggle icon
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: selectedColor,
//                     foregroundColor: Colors.white, // Set button text color to white
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   icon: Icon(Icons.person),
//                   label: Text('Login/Signup'),
//                   onPressed: () => appState.closeDrawer(),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
//                     color: textColor,
//                   ),
//                   onPressed: () {
//                     appState.toggleTheme(); // Theme toggle functionality
//                     appState.closeDrawer();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class FullScreenMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context, listen: false);
//     final isDarkMode = appState.themeMode == ThemeMode.dark;
//     final selectedColor = Colors.purple;

//     // Define background and text colors based on the theme mode
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;

//     return Container(
//       color: backgroundColor.withOpacity(0.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 32.0), // Right alignment with padding
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch, // Full width
//                 children: [
//                   // Explore item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('Explore');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight, // Align each row to the right
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center, // Vertically aligns icons
//                         children: [
//                           Icon(
//                             Icons.search,
//                             color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 8), // Consistent space between icon and text
//                           Container(
//                             alignment: Alignment.centerLeft, // Align text to the left of container
//                             width: 100, // Fixed width for text alignment
//                             child: Text(
//                               'Explore',
//                               style: TextStyle(
//                                 color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 24),

//                   // Create Song item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('Create Song');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.create,
//                             color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 8),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             width: 100, // Same fixed width for consistent alignment
//                             child: Text(
//                               'Create Song',
//                               style: TextStyle(
//                                 color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 24),

//                   // About item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('About');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.info,
//                             color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 8),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             width: 100, // Consistent width to align text
//                             child: Text(
//                               'About',
//                               style: TextStyle(
//                                 color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom controls: Login/Signup button and Theme toggle icon
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: selectedColor,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   icon: Icon(Icons.person),
//                   label: Text('Login/Signup'),
//                   onPressed: () => appState.closeDrawer(),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
//                     color: textColor,
//                   ),
//                   onPressed: () {
//                     appState.toggleTheme();
//                     appState.closeDrawer();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// class FullScreenMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appState = Provider.of<AppState>(context, listen: false);
//     final isDarkMode = appState.themeMode == ThemeMode.dark;
//     final selectedColor = Colors.purple;

//     // Define background and text colors based on the theme mode
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;

//     return Container(
//       color: backgroundColor.withOpacity(0.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 32.0, top: 8.0), // Reduced top padding for less top space
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch, // Full width
//                 children: [
//                   // Explore item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('Explore');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight, // Align each row to the right
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center, // Vertically aligns icons
//                         children: [
//                           Icon(
//                             Icons.search,
//                             color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 12), // Increased space between icon and text
//                           Container(
//                             alignment: Alignment.centerLeft, // Align text to the left of container
//                             width: 120, // Fixed width for consistent alignment
//                             child: Text(
//                               'Explore',
//                               style: TextStyle(
//                                 fontSize: 18, // Increased text size
//                                 color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16), // Adjusted spacing between items

//                   // Create Song item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('Create Song');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.create,
//                             color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 12),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             width: 120, // Same fixed width for consistent alignment
//                             child: Text(
//                               'Create Song',
//                               style: TextStyle(
//                                 fontSize: 18, // Increased text size
//                                 color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16), // Adjusted spacing between items

//                   // About item
//                   GestureDetector(
//                     onTap: () {
//                       appState.setSelectedMenuItem('About');
//                       appState.closeDrawer();
//                     },
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.info,
//                             color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                           ),
//                           SizedBox(width: 12),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             width: 120, // Consistent width to align text
//                             child: Text(
//                               'About',
//                               style: TextStyle(
//                                 fontSize: 18, // Increased text size
//                                 color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom controls: Login/Signup button and Theme toggle icon
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: selectedColor,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   icon: Icon(Icons.person),
//                   label: Text('Login/Signup'),
//                   onPressed: () => appState.closeDrawer(),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
//                     color: textColor,
//                   ),
//                   onPressed: () {
//                     appState.toggleTheme();
//                     appState.closeDrawer();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class FullScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    final isDarkMode = appState.themeMode == ThemeMode.dark;
    final selectedColor = Colors.purple;
    final dividerColor = isDarkMode ? Colors.grey[700] : Colors.grey[300];

    // Define background and text colors based on the theme mode
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Container(
      color: backgroundColor.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 32.0), // Removed top padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Align items to the top
                crossAxisAlignment: CrossAxisAlignment.stretch, // Full width
                children: [
                  SizedBox(height: 150.0), // Small top space if needed

                  // Explore item
                  GestureDetector(
                    onTap: () {
                      appState.setSelectedMenuItem('Explore');
                      appState.closeDrawer();
                    },
                    child: Align(
                      alignment: Alignment.centerRight, // Align each row to the right
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center, // Vertically aligns icons
                        children: [
                          Icon(
                            Icons.search,
                            color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
                            size: 28, // Increased icon size
                          ),
                          SizedBox(width: 12), // Consistent space between icon and text
                          Container(
                            alignment: Alignment.centerLeft, // Align text to the left of container
                            width: 140, // Fixed width for consistent alignment
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 20, // Increased text size
                                fontWeight: FontWeight.bold, // Bold text
                                color: appState.selectedMenuItem == 'Explore' ? selectedColor : textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Adjusted spacing between items

                  // Create Song item
                  GestureDetector(
                    onTap: () {
                      appState.setSelectedMenuItem('Create Song');
                      appState.closeDrawer();
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.create,
                            color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
                            size: 28, // Increased icon size
                          ),
                          SizedBox(width: 12),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 140, // Same fixed width for consistent alignment
                            child: Text(
                              'Create Song',
                              style: TextStyle(
                                fontSize: 20, // Increased text size
                                fontWeight: FontWeight.bold, // Bold text
                                color: appState.selectedMenuItem == 'Create Song' ? selectedColor : textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Adjusted spacing between items

                  // About item
                  GestureDetector(
                    onTap: () {
                      appState.setSelectedMenuItem('About');
                      appState.closeDrawer();
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
                            size: 28, // Increased icon size
                          ),
                          SizedBox(width: 12),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 140, // Consistent width to align text
                            child: Text(
                              'About',
                              style: TextStyle(
                                fontSize: 20, // Increased text size
                                fontWeight: FontWeight.bold, // Bold text
                                color: appState.selectedMenuItem == 'About' ? selectedColor : textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: dividerColor,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),

          // Bottom controls: Login/Signup button and Theme toggle icon
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: Icon(Icons.person),
                  label: Text('Login/Signup'),
                  onPressed: () {
                      Navigator.of(context).push(CustomRouter.createRoute(LoginScreen()));
                    },
                ),
                IconButton(
                  icon: Icon(
                    isDarkMode ? Icons.brightness_4 : Icons.brightness_7,
                    color: textColor,
                  ),
                  onPressed: () {
                    appState.toggleTheme();
                    appState.closeDrawer();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
