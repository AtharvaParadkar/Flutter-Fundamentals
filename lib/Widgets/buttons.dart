import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: const ButtonStyle(
                elevation: WidgetStatePropertyAll(20),
                overlayColor: WidgetStatePropertyAll(Colors.black45),
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {},
              child: const Text(
                'Text Button!',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Theme.of(context).primaryColor),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Elevated Button!',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(20),
                backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                overlayColor: const WidgetStatePropertyAll(Colors.black45),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Outlined Button!',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FilledButton(
              style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(20),
                backgroundColor:
                    WidgetStatePropertyAll(Theme.of(context).primaryColor),
                overlayColor: const WidgetStatePropertyAll(Colors.black45),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Filled Button!',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FilledButton.tonal(
              style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(20),
                backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                overlayColor: const WidgetStatePropertyAll(Colors.black45),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Filled Tonal Button!',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
