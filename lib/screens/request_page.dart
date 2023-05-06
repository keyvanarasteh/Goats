import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_kzgwt1om.json'),
      ),
    );
  }
}
