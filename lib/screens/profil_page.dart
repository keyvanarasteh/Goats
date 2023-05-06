import 'package:flutter/material.dart';
import 'package:flutter_music_app_ui/screens/account_settings_page.dart';
import 'package:flutter_music_app_ui/screens/favorite_page.dart';
import 'package:flutter_music_app_ui/screens/help_feedback_page.dart';
import 'package:flutter_music_app_ui/screens/play_page.dart';
import 'package:flutter_music_app_ui/screens/settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('My Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                  'https://myisu.istinye.edu.tr/sites/default/files/pictures/2022-02/keyvan.abbasabad.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Keyvan Arasteh',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black),
            ),
            SizedBox(height: 8.0),
            Text(
              'keyvanarasteh@gmail.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AccountSettingsPage()));
              },
              icon: Icon(Icons.edit),
              label: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple.shade700,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 48.0,
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.music_note_outlined),
                  title: Text('My Music'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PlayPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.playlist_play_outlined),
                  title: Text('My Playlists'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FavoritePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Settings'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Help & Feedback'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HelpFeedbackPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
