import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  final textStyle = const TextStyle(color: Color.fromARGB(255, 65, 65, 66));
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Friends',
              style: textStyle,
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Share',
              style: textStyle,
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Request',
              style: textStyle,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: textStyle,
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text(
              'Policies',
              style: textStyle,
            ),
            onTap: () => null,
          ),
          ListTile(
            title: Text(
              'Exit',
              style: textStyle,
            ),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
