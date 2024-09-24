import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class GlowingAvatar extends StatelessWidget {
  const GlowingAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glowing'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: AvatarGlow(
              glowColor: const Color.fromARGB(255, 0, 255, 0),
              glowRadiusFactor: 0.4,
              glowCount: 3,
              child: Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: Image.asset(
                  'assets/images/ana_de_armas.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          AvatarGlow(
            glowColor: Color.fromARGB(255, 128, 128, 128),
            glowRadiusFactor: 0.4,
            glowCount: 3,
            glowShape: BoxShape.rectangle,
            child: Container(
              height: 150,
              width: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
              ),
              child: Image.network(
                'https://live.staticflickr.com/65535/53242229498_700d655db1_h.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
