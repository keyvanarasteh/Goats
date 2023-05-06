import 'package:flutter/material.dart';

class HelpFeedbackPage extends StatefulWidget {
  @override
  _HelpFeedbackPageState createState() => _HelpFeedbackPageState();
}

class _HelpFeedbackPageState extends State<HelpFeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _feedback = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Help & Feedback'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Adınız',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    border: OutlineInputBorder(),
                    hintText: 'Adınızı girin',
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen adınızı girin';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'E-posta adresiniz',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    border: OutlineInputBorder(),
                    hintText: 'E-posta adresinizi girin',
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen e-posta adresinizi girin';
                    } else if (!RegExp(
                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                        .hasMatch(value)) {
                      return 'Lütfen geçerli bir e-posta adresi girin';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Sorunuz veya geri bildiriminiz',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    border: OutlineInputBorder(),
                    hintText: 'Sorunuzu veya geri bildiriminizi girin',
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                    alignLabelWithHint: true,
                  ),
                  maxLines: 10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen sorunuz veya geri bildiriminizi girin';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _feedback = value!;
                  },
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade200.withOpacity(0.8),
                  ),
                  child: Text('Gönder'),
                  onPressed: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Form verilerini gönderme işlemini burada yapabilirsiniz
                      // Örneğin, bir API çağrısı yaparak geri bildirimi gönderebilirsiniz.
                      // Bu örnekte, sadece bir yazdırma işlemi yapacağız:
                      print('Ad: $_name');
                      print('E-posta: $_email');
                      print('Geri bildirim: $_feedback');
                      // Geri dönüş

                      // Geri dönüş yaparak teşekkür edin veya başka bir işlem yapın
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Geri bildiriminiz alındı!'),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
