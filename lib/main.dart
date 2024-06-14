// ignore_for_file: unused_import

import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter_basics/Widgets/alert.dart";
import "package:flutter_basics/Widgets/animatedtext.dart";
import "package:flutter_basics/Widgets/bottomnav.dart";
import "package:flutter_basics/Widgets/bottomsheet.dart";
import "package:flutter_basics/Widgets/buttons.dart";
import "package:flutter_basics/Widgets/containersized.dart";
import "package:flutter_basics/Widgets/dismissible.dart";
import "package:flutter_basics/Widgets/drawer.dart";
import "package:flutter_basics/Widgets/dropdown.dart";
import "package:flutter_basics/Widgets/form.dart";
import "package:flutter_basics/Widgets/image.dart";
import "package:flutter_basics/Widgets/imagepicker.dart";
import "package:flutter_basics/Widgets/instaui.dart";
import "package:flutter_basics/Widgets/list_grid.dart";
import "package:flutter_basics/Widgets/location.dart";
import "package:flutter_basics/Widgets/rowscolumns.dart";
import "package:flutter_basics/Widgets/simpleui.dart";
import "package:flutter_basics/Widgets/snackbar.dart";
import "package:flutter_basics/Widgets/stack.dart";
import "package:flutter_basics/Widgets/tabbar.dart";
import "package:flutter_basics/Widgets/useremailpassauth.dart";
import "package:flutter_basics/firebase_options.dart";
import "package:flutter_basics/for_loop.dart";

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
      home: const UserEmailPassAuth(),
    );
  }
}
