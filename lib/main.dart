import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_basics/home.dart";
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
      home: HomeScreen(
        onThemeChanged: _toggleTheme,
        isDarkMode: themeMode == ThemeMode.dark,
      ),
    );
  }
}
