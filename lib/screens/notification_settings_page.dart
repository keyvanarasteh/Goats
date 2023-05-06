import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _isEnabled = true;
  bool _isSoundEnabled = true;
  bool _isVibrationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Bildirim Ayarları'),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bildirimler',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bildirimleri Aç/Kapat',
                  style: TextStyle(fontSize: 18.0),
                ),
                Switch(
                  value: _isEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Bildirim Ayarları',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sesli Bildirimler',
                  style: TextStyle(fontSize: 18.0),
                ),
                Switch(
                  value: _isSoundEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isSoundEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Titreşimli Bildirimler',
                  style: TextStyle(fontSize: 18.0),
                ),
                Switch(
                  value: _isVibrationEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isVibrationEnabled = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
