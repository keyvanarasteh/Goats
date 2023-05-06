import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePage extends StatelessWidget {
  const SharePage({Key? key}) : super(key: key);

  final String _content =
      'Rythmia, müzik dinleme deneyiminizi daha da geliştirmek için tasarlanmış bir uygulamadır. Binlerce şarkı arasından seçim yapabilir, kendi çalma listelerinizi oluşturabilir ve arkadaşlarınızla paylaşabilirsiniz. Ayrıca, uygulama içindeki ekolayzer ile müziğin ses ayarlarını da özelleştirebilirsiniz. Rythmia ile müzik dinleme deneyiminizi keşfedin!';

  void _shareContent(BuildContext context) {
    Share.share(_content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paylaş'),
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Text(
                _content,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () => _shareContent(context),
                icon: const Icon(Icons.share),
                label: const Text('Bu Cümleyi Paylaş'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
