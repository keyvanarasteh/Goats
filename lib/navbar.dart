import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_app_ui/screens/favorite_page.dart';
import 'package:flutter_music_app_ui/screens/policies_page.dart';
import 'package:flutter_music_app_ui/screens/request_page.dart';
import 'package:flutter_music_app_ui/screens/settings_page.dart';
import 'package:flutter_music_app_ui/screens/share_page.dart';
import 'dart:io';

class NavBar extends StatelessWidget {
  @override
  final textStyle = const TextStyle(
    color: Color.fromARGB(255, 125, 21, 190),
  );
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,

        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('ISUProject.comm'),
            accountEmail: const Text('flutterproject@fbi.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://myisu.istinye.edu.tr/sites/default/files/pictures/2022-02/keyvan.abbasabad.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/114979/pexels-photo-114979.jpeg?cs=srgb&dl=pexels-veeterzy-114979.jpg&fm=jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              'Favorite',
              style: textStyle,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FavoritePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Share',
              style: textStyle,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SharePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Request',
              style: textStyle,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RequestPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: textStyle,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text(
              'Policies',
              style: textStyle,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PoliciesPage()));
            },
          ),
          ListTile(
            title: Text(
              'Exit',
              style: textStyle,
            ),
            leading: Icon(Icons.exit_to_app),
            onLongPress: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
