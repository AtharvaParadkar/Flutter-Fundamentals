import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UpiAnimation extends StatelessWidget {
  const UpiAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Animation'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Lottie.network(
          'https://lottie.host/b3f10076-3196-43b2-8927-618eaff87707/3Xdmgy6Lxn.json',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
