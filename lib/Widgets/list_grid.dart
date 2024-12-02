// ignore_for_file: unused_import

import "package:flutter/material.dart";
import "package:flutter_basics/Widgets/buttons.dart";
import "package:flutter_basics/Widgets/containersized.dart";
import "package:flutter_basics/Widgets/rowscolumns.dart";

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Apple', 'Orange', 'Mango', 'Grapes', 'Pineapple'];
    Map fruitsperson = {
      'fruits': ['Apple', 'Orange', 'Mango', 'Grapes', 'Pineapple'],
      'name': ['Atharva', 'Ashutosh', 'Aditya', 'Vijay', 'Akash']
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List and Grid",
        ),
        backgroundColor: Colors.transparent,
        elevation: 10,
      ),
      //^ We use ListView.builder when we dont the exact number of items.
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (fruitsperson['fruits'][index] == 'Apple') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Buttons()),
                        );
                      } else if (fruitsperson['fruits'][index] == 'Orange') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RowsCols()),
                        );
                      } else if (fruitsperson['fruits'][index] == 'Mango') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContainerSized()),
                        );
                      }
                    },
                    leading: const Icon(Icons.person),
                    textColor: Colors.black,
                    tileColor: const Color.fromARGB(255, 27, 243, 106),
                    iconColor: const Color.fromARGB(255, 251, 7, 255),
                    title: Text(fruitsperson['fruits'][index]),
                    subtitle: Text(fruitsperson['name'][index]),
                  ),
                );
              },
            ),
            SizedBox(
              height: 350,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
                shrinkWrap: true,
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        if (fruitsperson['fruits'][index] == 'Apple') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Buttons()),
                          );
                        } else if (fruitsperson['fruits'][index] == 'Orange') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RowsCols()),
                          );
                        } else if (fruitsperson['fruits'][index] == 'Mango') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContainerSized()),
                          );
                        }
                      },
                      leading: const Icon(Icons.person),
                      textColor: Colors.black,
                      tileColor: const Color.fromARGB(255, 0, 16, 244),
                      iconColor: const Color.fromARGB(255, 255, 0, 0),
                      title: Text(fruitsperson['fruits'][index]),
                      subtitle: Text(fruitsperson['name'][index]),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
