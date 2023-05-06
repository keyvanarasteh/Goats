import 'package:flutter/material.dart';

class Ekolayzer extends StatefulWidget {
  @override
  _EkolayzerState createState() => _EkolayzerState();
}

class _EkolayzerState extends State<Ekolayzer> {
  double _bassLevel = 5.0;
  double _trebleLevel = 5.0;
  double _midLevel = 5.0;
  bool _isSaved = false;

  void _onBassSliderChanged(double value) {
    setState(() {
      _bassLevel = value;
    });
  }

  void _onTrebleSliderChanged(double value) {
    setState(() {
      _trebleLevel = value;
    });
  }

  void _onMidSliderChanged(double value) {
    setState(() {
      _midLevel = value;
    });
  }

  void _onSaveButtonPressed() {
    setState(() {
      _isSaved = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekolayzer'),
        backgroundColor: Colors.deepPurple.shade800,
      ),
      backgroundColor: Colors.deepPurple.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bass',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Slider(
              value: _bassLevel,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: _onBassSliderChanged,
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey.shade400,
            ),
            SizedBox(height: 32),
            Text(
              'Treble',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Slider(
              value: _trebleLevel,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: _onTrebleSliderChanged,
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey.shade400,
            ),
            SizedBox(height: 32),
            Text(
              'Mid',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Slider(
              value: _midLevel,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: _onMidSliderChanged,
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey.shade400,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kaydedildi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Switch(
                  value: _isSaved,
                  onChanged: (value) {
                    setState(() {
                      _isSaved = value;
                    });
                  },
                  activeColor: Colors.deepPurple,
                ),
              ],
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: _onSaveButtonPressed,
                child: Text(
                  'Kaydet',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
