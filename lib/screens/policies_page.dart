import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Policies'),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'At Rhythmia, we are committed to protecting your privacy. We understand that your personal information is important to you, and we will do our best to keep it safe and secure:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                'What information do we collect?',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                '1. We may collect your name, email address, and other contact information when you sign up for our app.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                '2. We may collect information about your music preferences, listening habits, and interactions with our app to improve our service.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 32.0),
              Text(
                'How do we use your information?',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. We use your information to provide you with personalized music recommendations and other features of our app.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                '2. We may use your information to communicate with you about our app and to send you promotional offers.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 32.0),
              Text(
                'How do we protect your information?',
                style: TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. We use industry-standard security measures to protect your personal information from unauthorized access or disclosure.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                '2. We do not sell or share your personal information with third parties for their marketing purposes.',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
