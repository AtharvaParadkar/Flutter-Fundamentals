import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

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
      if(authenticated){
        //& Page Navigation
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
