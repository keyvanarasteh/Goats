import 'package:flutter/material.dart';
import 'package:flutter_music_app_ui/screens/about_page.dart';
import 'package:flutter_music_app_ui/screens/account_settings_page.dart';
import 'package:flutter_music_app_ui/screens/help_support_page.dart';
import 'package:flutter_music_app_ui/screens/notification_settings_page.dart';
import 'ekolayzer_page.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Ayarlar'),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: ListView(
        children: [
          ListTile(
            title: Text('Hesap'),
            subtitle: Text('Hesap ayarlarınızı yönetin'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Hesap ayarları sayfasına yönlendirin
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AccountSettingsPage()));
            },
          ),
          ListTile(
            title: Text('Bildirimler'),
            subtitle: Text('Bildirim ayarlarınızı yönetin'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Bildirim ayarları sayfasına yönlendirin
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NotificationSettingsPage()));
            },
          ),
          ListTile(
            title: Text('Yardım ve Destek'),
            subtitle: Text('Yardım almak veya destek almak için bize ulaşın'),
            leading: Icon(Icons.help),
            onTap: () {
              // Yardım ve Destek sayfasına yönlendirin
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HelpSupportPage()));
            },
          ),
          ListTile(
            title: Text('Hakkında'),
            subtitle: Text('Uygulamanın sürümü ve bilgileri'),
            leading: Icon(Icons.info),
            onTap: () {
              // Hakkında sayfasına yönlendirin
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          ListTile(
            title: Text('Ekolayzer'),
            subtitle: Text('Ses ayarlarınızı yönetin'),
            leading: Icon(Icons.equalizer),
            onTap: () {
              // Ekolayzer sayfasına yönlendirin
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Ekolayzer()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Çıkış Yap'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              // Uygulamadan çıkış yapın
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
