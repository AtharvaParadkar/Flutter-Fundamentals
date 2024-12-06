import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_basics/home.dart";
import "package:flutter_basics/notifier/theme_notifier.dart";
import "package:local_auth/local_auth.dart";
import "package:provider/provider.dart";

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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer(
        builder: (BuildContext context, ThemeNotifier notifier, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: notifier.getMode()
                ? ThemeData.dark().copyWith(
                    scaffoldBackgroundColor:
                        const Color.fromARGB(255, 30, 30, 30))
                : ThemeData.light().copyWith(
                    scaffoldBackgroundColor:
                        const Color.fromARGB(255, 240, 230, 220)),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
