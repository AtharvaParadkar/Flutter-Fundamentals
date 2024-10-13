// ignore_for_file: unused_import

import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_basics/UI/gymcheckoutui.dart";
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
import "package:flutter_basics/Widgets/glowing_avatar.dart";
import "package:flutter_basics/Widgets/image.dart";
import "package:flutter_basics/Widgets/imagepicker.dart";
import "package:flutter_basics/UI/instaui.dart";
import "package:flutter_basics/Widgets/list_grid.dart";
import "package:flutter_basics/Widgets/location.dart";
import "package:flutter_basics/Widgets/opacityanimation.dart";
import "package:flutter_basics/Widgets/progressbar.dart";
import "package:flutter_basics/Widgets/qrcodescanner.dart";
import "package:flutter_basics/Widgets/radio_checkbox.dart";
import "package:flutter_basics/Widgets/rowscolumns.dart";
import "package:flutter_basics/UI/simpleui.dart";
import "package:flutter_basics/Widgets/snackbar.dart";
import "package:flutter_basics/Widgets/stack.dart";
import "package:flutter_basics/Widgets/tabbar.dart";
import "package:flutter_basics/Widgets/themeSwitcher.dart";
import "package:flutter_basics/Widgets/useremailpassauth.dart";
import "package:flutter_basics/firebase_options.dart";
import "package:flutter_basics/for_loop.dart";
import "package:flutter_basics/listmodal/listview.dart";
import "package:local_auth/local_auth.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final LocalAuthentication auth;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    _authenticate();
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Please Authenticate Yourself',
        options: AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false, //* Allows only biometrics no password/pin
        ),
      );
      print('Authenticated : $authenticated');
    } on PlatformException catch (c) {
      print(c);
    }
  }

  ThemeMode themeMode = ThemeMode.system;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color.fromARGB(255, 0, 0, 255),
        brightness: Brightness.dark,
      ),
      themeMode: themeMode,
      home: Themeswitcher(
        onThemeChanged: _toggleTheme,
        isDarkMode: themeMode == ThemeMode.dark,
      ),
    );
  }
}
