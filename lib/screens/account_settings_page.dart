import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _name = 'Keyvan Arasteh';
  String _email = 'flutterproject@fbi.com';
  String _password = '********';

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
                'Personal Information',
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(
                            color: _darkModeEnabled
                                ? Colors.grey.shade400
                                : Colors.grey.shade600,
                          ),
                        ),
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _name = value;
                          });
                        },
                        controller: TextEditingController(text: _name),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email',
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            color: _darkModeEnabled
                                ? Colors.grey.shade400
                                : Colors.grey.shade600,
                          ),
                        ),
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _email = value;
                          });
                        },
                        controller: TextEditingController(text: _email),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: _darkModeEnabled
                                ? Colors.grey.shade400
                                : Colors.grey.shade600,
                          ),
                        ),
                        style: TextStyle(
                          color: _darkModeEnabled ? Colors.white : Colors.black,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _password = value;
                          });
                        },
                        controller: TextEditingController(text: _password),
                      ),
                    ],
                  ),
                ),
              ),
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement delete account functionality
                },
                child: Text(
                  'Delete Account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
