import "package:flutter/material.dart";

class DismissableWidget extends StatefulWidget {
  const DismissableWidget({super.key});

  @override
  State<DismissableWidget> createState() => _DismissableWidgetState();
}

class _DismissableWidgetState extends State<DismissableWidget> {
  List<String> Cars = [
    'BMW',
    'Koenigsegg',
    'Porsche',
    'Lamborgini',
    'Lotus',
    'Ford GT'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dismissable',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 238, 1, 251),
      ),
      body: ListView.builder(
          itemCount: Cars.length,
          itemBuilder: (context, index) {
            final car = Cars[index];
            return Dismissible(
              onDismissed: (direction) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(car),
                    backgroundColor: direction == DismissDirection.startToEnd
                        ? Colors.red
                        : Colors.green,
                    shape: const StadiumBorder(),
                  ),
                );
                setState(() {
                  Cars.removeAt(index);
                });
              },
              key: Key(car),
              background: Container(color: Colors.red),
              secondaryBackground: Container(color: Colors.green),
              child: Card(
                color: Colors.blue,
                shape: const StadiumBorder(),
                child: ListTile(
                  title: Text(Cars[index]),
                  leading: const Icon(Icons.directions_car),
                  textColor: Colors.black,
                ),
              ),
            );
          }),
    );
  }
}
