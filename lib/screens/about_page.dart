import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Hakkında'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  final String version = '1.0.0';
  final String developer =
      'Yağız Can Çakıroğlu, Cahit Saral, Hasancan Kahraman';
  final String license = '[1111111111]';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      appBar: AppBar(
        title: Text('Hakkında'),
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Rhytmia',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Versiyon: $version',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Geliştirici: $developer',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lisans: $license',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Açıklama: Rhytmia, müzik dinleme deneyiminizi daha keyifli hale getirmek için tasarlanmış bir mobil uygulamadır. Uygulama, kullanıcıların favori şarkılarını dinlemelerine, çalma listeleri oluşturmalarına ve müzik türlerine göre keşif yapmalarına olanak tanır. Ayrıca, uygulama kullanıcıların müzik dinleme alışkanlıklarını takip etmelerine ve öneriler alarak müzik zevklerini geliştirmelerine yardımcı olur.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Güncelleme notları:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '- Versiyon 1.0.0: İlk sürüm yayınlandı.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
