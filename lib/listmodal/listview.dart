import 'package:flutter/material.dart';
import 'package:flutter_basics/listmodal/modal.dart';

class Listviewwidget extends StatefulWidget {
  const Listviewwidget({super.key});

  @override
  State<Listviewwidget> createState() => _ListviewwidgetState();
}

class _ListviewwidgetState extends State<Listviewwidget> {
  List<Cars> gadi = [
    Cars(
      image: Image.network(
        'https://img.freepik.com/premium-photo/bmw-m5-red-competition-4k-phone-wallpaper_946696-5966.jpg?w=996',
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      name: 'BMW',
      type: 'Sports',
    ),
    Cars(
      image: Image.network(
        'https://i.ytimg.com/vi/ELu-YrQYLik/sddefault.jpg',
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      name: 'Rolls Royce',
      type: 'Luzury',
    ),
    Cars(
      image: Image.network(
        'https://www.pixel4k.com/wp-content/uploads/2023/10/dodge-charger-on-fire-4k_1697784573-2048x1152.jpg.webp',
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      name: 'Dodge Charger',
      type: 'Muscle',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal Listview'),
      ),
      body: ListView.builder(
        itemCount: gadi.length,
        itemBuilder: (c, i) => ListTile(
          leading: gadi[i].image,
          title: Text(gadi[i].name),
          subtitle: Text(gadi[i].type),
        ),
      ),
    );
  }
}
