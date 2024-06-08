import "package:flutter/material.dart";

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'BMW';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Down List'),
        backgroundColor: const Color.fromARGB(255, 106, 57, 239),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down_circle_outlined),
              value: selectedvalue,
              items: <String>[
                'BMW',
                'Royls Royce',
                'Bentley',
                'Jaguar',
                'Maserati'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                    value: value, child: Text(value));
              }).toList(),
              isExpanded: true,
              dropdownColor: Colors.blueGrey,
              onChanged: (String? newvalue) {
                setState(() {
                  //~ ! for null safety
                  selectedvalue = newvalue!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
