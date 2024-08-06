import 'package:flutter/material.dart';

class RadioCheckbox extends StatefulWidget {
  const RadioCheckbox({super.key});

  @override
  State<RadioCheckbox> createState() => _RadioCheckboxState();
}

class _RadioCheckboxState extends State<RadioCheckbox> {
  List<String> radioValues = ['Op1', 'Op2', 'Op3', 'Op4', 'Op5'],
      checkboxValues = ['Cb1', 'Cb2', 'Cb3', 'Cb4', 'Cb5'];
  List<bool> selectedCheckbox = [false, false, false, false, false];
  String? selectedRadio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons'),
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: radioValues.length,
                itemBuilder: (c, i) => RadioListTile<String>(
                  activeColor: Colors.amberAccent,
                  title: Text(radioValues[i]),
                  value: radioValues[i],
                  groupValue: selectedRadio,
                  onChanged: (String? value) => setState(() {
                    selectedRadio = value;
                  }),
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: checkboxValues.length,
                itemBuilder: (c, i) => CheckboxListTile(
                  value: selectedCheckbox[i],
                  onChanged: (bool? value) => setState(() {
                    selectedCheckbox[i] = value!;
                  }),
                  title: Text(checkboxValues[i]),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.amberAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
