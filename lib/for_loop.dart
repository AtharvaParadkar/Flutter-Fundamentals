import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      for (int i = 1; i <= 100; i++)
        Container(
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            color: Colors.amberAccent)
    ]));
  }
}
