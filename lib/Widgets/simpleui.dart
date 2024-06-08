import 'package:flutter/material.dart';

class SimpleUI extends StatefulWidget {
  const SimpleUI({super.key});

  @override
  State<SimpleUI> createState() => SimpleUIState();
}

class SimpleUIState extends State<SimpleUI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height,
        w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500, //h/2,
                    color: Colors.yellowAccent,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            color: Colors.redAccent,
                          ),
                        ),
                        const Positioned(
                          right: 30,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Madrid has tours around the city for the Designers.',
                    style: TextStyle(fontSize: 15, color: Colors.grey[200]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                rowIconText('20', Icons.favorite_rounded),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message_rounded),
                rowIconText('295', Icons.face),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 10),
        Icon(icon),
      ],
    );
  }
}
