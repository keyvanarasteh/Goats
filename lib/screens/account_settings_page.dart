import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkModeEnabled
          ? ThemeData.dark().copyWith(
              primaryColor: Colors.deepPurple,
              hintColor: Colors.deepPurpleAccent,
            )
          : ThemeData.light().copyWith(
              primaryColor: Colors.blue,
              hintColor: Colors.blueAccent,
            ),
      home: Scaffold(
        backgroundColor: _darkModeEnabled
            ? Colors.grey.shade900
            : Colors.deepPurple.shade200.withOpacity(0.8),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
          title: Text('Account Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _darkModeEnabled ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: _darkModeEnabled ? Colors.grey.shade800 : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SwitchListTile(
                    title: Text(
                      'Enable Notifications',
                      style: TextStyle(
                        color: _darkModeEnabled ? Colors.white : Colors.black,
                      ),
                    ),
                    value: _notificationsEnabled,
                    onChanged: (value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Appearance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _darkModeEnabled ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: _darkModeEnabled ? Colors.grey.shade800 : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SwitchListTile(
                    title: Text(
                      'Dark Mode',
                      style: TextStyle(
                        color: _darkModeEnabled ? Colors.white : Colors.black,
                      ),
                    ),
                    value: _darkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        _darkModeEnabled = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
