import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  final String email = 'destek@rhytmia.com';
  final String phone = '+90 555 555 55 55';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Yardım ve Destek'),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Yardım Merkezi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sıkça Sorulan Sorular',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Soru: Rhytmia uygulamasını nasıl indirebilirim?\n\nCevap: Rhytmia uygulamasını Google Play Store veya App Store\'dan indirebilirsiniz.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Soru: Rhytmia uygulaması ücretli mi?\n\nCevap: Hayır, Rhytmia uygulaması ücretsizdir.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Soru: Rhytmia uygulamasında çalma listesi nasıl oluşturabilirim?\n\nCevap: Rhytmia uygulamasında, "Çalma Listeleri" bölümüne giderek yeni bir çalma listesi oluşturabilirsiniz. Daha sonra, favori şarkılarınızı çalma listesine ekleyebilirsiniz.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Soru: Rhytmia uygulamasında müzik önerileri nasıl alabilirim?\n\nCevap: Rhytmia uygulamasında, "Keşfet" bölümüne giderek müzik önerileri alabilirsiniz. Uygulama, dinleme alışkanlıklarınızı takip ederek size özel öneriler sunar.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Soru: Rhytmia uygulamasında bir sorunla karşılaştım, ne yapabilirim?\n\nCevap: Rhytmia uygulamasında bir sorunla karşılaştığınızda, lütfen bize e-posta veya telefon yoluyla ulaşın. E-posta adresimiz: $email, telefon numaramız: $phone.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
