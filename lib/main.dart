// ignore_for_file: unused_import

import "package:flutter/material.dart";
import "package:flutter_basics/Widgets/containersized.dart";
import "package:flutter_basics/Widgets/rowscolumns.dart";
import "package:flutter_basics/for_loop.dart";
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color.fromARGB(255, 0, 0, 255),
        brightness: Brightness.dark,
      ),
      home: const RowsCols(),
    );
  }
}
