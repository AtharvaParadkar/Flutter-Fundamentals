//^ Padding is space from INSIDE and Margin is space from OUTSIDE

import "package:flutter/material.dart";

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Container and SizedBox'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          // color: Colors.teal,
          height: 100,
          width: 100,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
              color: Colors.blue,
              /*shape: BoxShape.circle,*/
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15,
                  spreadRadius: 8,
                  color: Colors.lightBlue,
                )
              ]),
          child: Center(
            child: Container(color: Colors.deepOrange,margin: const EdgeInsets.all(10),),
            // Text('Hello',style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
      //const SizedBox(
      //   height: 50,
      //   width: 50,
      //   child: Text('Hello'),
      // ),
    );
  }
}
