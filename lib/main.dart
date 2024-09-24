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
import "package:flutter_basics/Widgets/useremailpassauth.dart";
import "package:flutter_basics/firebase_options.dart";
import "package:flutter_basics/for_loop.dart";
import "package:flutter_basics/listmodal/listview.dart";
import "package:local_auth/local_auth.dart";

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
      home: const BiometricAuth(),
    );
  }
}

class BiometricAuth extends StatefulWidget {
  const BiometricAuth({super.key});

  @override
  State<BiometricAuth> createState() => _BiometricAuthState();
}

class _BiometricAuthState extends State<BiometricAuth> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  //^ Checks the device supports the biometric authentication
  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then(
          (bool isDeviceSupported) => setState(() {
            _supportState = isDeviceSupported;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biometric Authentication'),
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_supportState
              ? 'This Device is Supported'
              : 'This Device is Not Supported'),
          Divider(),
          ElevatedButton(
            onPressed: _getAvailableBiometrics,
            child: Text('Get Availabe Biometrics'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _authenticate, child: Text('Authenticate')),
        ],
      ),
    );
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Please Authenticate Yourself',
        options: AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: false //* Allows only biometrics no password/pin
            ),
      );
      print('Authenticated : $authenticated');
      if (authenticated) {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => GlowingAvatar()));
      }
    } on PlatformException catch (c) {
      print(c);
    }
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();

    print("List of Biometrics = $availableBiometrics");

    if (!mounted) {
      return;
    }
  }
}

