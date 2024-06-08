import "package:flutter/material.dart";

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
        backgroundColor: Colors.amber[900],
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            _showDialog(context);
          },
          style: ButtonStyle(
            elevation: const WidgetStatePropertyAll(10),
            backgroundColor: const WidgetStatePropertyAll(Colors.black45),
            overlayColor: const WidgetStatePropertyAll(Colors.black45),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          child: const Text(
            'Alert!',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.amber[900],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          scrollable: true,
          title: const Text(
            'This is an Alert!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'This is a demo',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'This is Atharva Paradkar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ],
        );
      });
}
