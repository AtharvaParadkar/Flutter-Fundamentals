import 'package:flutter/material.dart';

class Animated extends StatelessWidget {
  const Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routed Page'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 255),
      ),
      body: const Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
