import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songgpt/providers/app_state.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);

    return GestureDetector(
      onTap: () => appState.closeDrawer(), // Close drawer when tapping outside
      child: Container(
        color: Colors.black.withOpacity(0.5), // Semi-transparent background
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 250,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => appState.closeDrawer(),
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                ),
                // Menu items
                ListTile(
                  leading: Icon(Icons.search, color: Colors.purple),
                  title: Text(
                    'Explore',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () => appState.closeDrawer(),
                ),
                ListTile(
                  leading: Icon(Icons.create, color: Colors.purple),
                  title: Text(
                    'Create Song',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () => appState.closeDrawer(),
                ),
                ListTile(
                  leading: Icon(Icons.library_music, color: Colors.purple),
                  title: Text(
                    'My Songs',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () => appState.closeDrawer(),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.purple),
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () => appState.closeDrawer(),
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.purple),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () => appState.closeDrawer(),
                ),
                Spacer(),
                // Bottom buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon: Icon(Icons.person),
                        label: Text('Hi mduma'),
                        onPressed: () => appState.closeDrawer(),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.brightness_6,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          appState.toggleTheme();
                          appState.closeDrawer();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16), // Bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
