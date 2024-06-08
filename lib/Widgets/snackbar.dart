import "package:flutter/material.dart";
import "package:flutter_basics/Widgets/list_grid.dart";

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Snackbar',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 250, 0),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snacks = SnackBar(
                content: const Center(
                  child: Text(
                    'This is a SnackBar!!',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 17, 250, 0),
                shape: const StadiumBorder(),
                animation: const AlwaysStoppedAnimation(10),
                duration: const Duration(seconds: 5),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: "Undo!",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListGrid()),
                    );
                  },
                  textColor: Colors.black,
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snacks);
            },
            child: const Text(
              'Snackbar!',
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
