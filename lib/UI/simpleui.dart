// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_basics/Widgets/simpleprofileui.dart';

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
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SimpleProfileUI()));
        },
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 490, //h/2,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 440,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://crawlsf.com/wp-content/uploads/2022/12/san-francisco-cable-cars-1.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 30,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/ana_de_armas.jpg'),
                          ),
                        ),
                        const Positioned(
                          top: 60,
                          right: 35,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                          ),
                        ),
                        const Positioned(
                          top: 60,
                          left: 30,
                          child: Icon(Icons.arrow_back_sharp, size: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Madrid has tours around the city for the Designers.',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('20', Icons.favorite_rounded),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message_rounded),
                rowIconText('295', Icons.face),
              ],
            ),
            const Divider(),
            Container(
              height: 198,
              padding: const EdgeInsets.all(10),
              child: const Text(
                  style: TextStyle(fontSize: 16.3),
                  "Immerse yourself in Madrid's history as you explore the city's most important sites and Royal Palace. Get the story behind the city's architectural history, following its evolution from 'Moorish Madrid' into the Habsburg and Bourbon periods. Then skip the long lines and visit the Spanish Royal Palace, seeing the royal collections and admiring its Baroque details"),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
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
