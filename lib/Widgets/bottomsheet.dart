import "package:flutter/material.dart";

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 20,
              context: context,
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Orange'),
                      subtitle: Text('Atharva'),
                    ),
                    ListTile(
                      title: Text('Apple'),
                      subtitle: Text('Atharva'),
                    ),
                    ListTile(
                      title: Text('Grapes'),
                      subtitle: Text('Atharva'),
                    ),
                    ListTile(
                      title: Text('Bsnana'),
                      subtitle: Text('Atharva'),
                    ),
                    ListTile(
                      title: Text('Pineapple'),
                      subtitle: Text('Atharva'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show BottomSheet'),
        ),
      ),
    );
  }
}
