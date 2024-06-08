import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width,
        h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.blueGrey,
        child: Column(
          //^ Column has a loose Layout
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Container(height: 50, width: 50, color: const Color.fromARGB(255, 143, 0, 255),),
                Container(height: 50, width: 50, color: const Color.fromARGB(255, 75, 0, 130) ,),
                Container(height: 50, width: 50, color: Colors.blue,),
                Container(height: 50, width: 50, color: Colors.green,),
                Container(height: 50, width: 50, color: Colors.yellow,),
                Container(height: 50, width: 50, color: Colors.orange,),
                Container(height: 50, width: 50, color: Colors.red,),
          ],
        ),
        //^ Row has a strict Layout
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(height: 50, width: 50, color: const Color.fromARGB(255, 143, 0, 255),),
        //     Container(height: 50, width: 50, color: const Color.fromARGB(255, 75, 0, 130) ,),
        //     Container(height: 50, width: 50, color: Colors.blue,),
        //     Container(height: 50, width: 50, color: Colors.green,),
        //     Container(height: 50, width: 50, color: Colors.yellow,),
        //     Container(height: 50, width: 50, color: Colors.orange,),
        //     Container(height: 50, width: 50, color: Colors.red,),
        //   ],
        // ),
        //^ Wrap has a flexible Layout 
        //& Wraps its child widgets onto multiple lines (rows or columns) when they don't fit within the available space.
        // Wrap(
        //   direction: Axis.vertical,
        //   alignment: WrapAlignment.center,
        //   children: [
        //     Container(height: 50, width: 50, color: const Color.fromARGB(255, 143, 0, 255),),
        //     Container(height: 50, width: 50, color: const Color.fromARGB(255, 75, 0, 130) ,),
        //     Container(height: 50, width: 50, color: Colors.blue,),
        //     Container(height: 50, width: 50, color: Colors.green,),
        //     Container(height: 50, width: 50, color: Colors.yellow,),
        //     Container(height: 50, width: 50, color: Colors.orange,),
        //     Container(height: 50, width: 50, color: Colors.red,),
        //   ],
        // ),
      ),
    );
  }
}
