import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_statemanagement/theme_model.dart'; // Ensure this import is correct
import 'settings_screen.dart'; // For navigating to the Settings screen

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Aneka-Tema Apps"),
        centerTitle: true, // Center the title in the AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to the Settings screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current theme
            Text(
              'Welcome to Aneka-Tema App, Feel Free To Change Font Style dan Color Theme In Settings',
              style: TextStyle(
                fontSize: 24,
                fontFamily:
                    themeProvider.fontFamily, // Use selected font family
              ),
            ),
            SizedBox(height: 20),
            // Button to change to Light Theme
          ],
        ),
      ),
    );
  }
}
