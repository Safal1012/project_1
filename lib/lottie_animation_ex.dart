import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: LottieEx(),
  ));
}

class LottieEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Lottie.asset("assets/animation/animation.json"),
        child: Lottie.network(
            "https://lottie.host/6549e1f7-80da-4ec3-b6f1-4e330fc87a2f/wDyMnoY5ai.json"),
      ),
    );
  }
}
