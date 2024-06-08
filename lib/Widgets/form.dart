// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import "package:flutter/services.dart";

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '',
      lastname = '',
      email = '',
      password = '',
      mobileno = '';
  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  trysubmit() {
    // ~ ! for null safety
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      final snacks = SnackBar(
        content: const Center(
          child: Text(
            'Error!',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        shape: const StadiumBorder(),
        animation: const AlwaysStoppedAnimation(10),
        duration: const Duration(seconds: 5),
        behavior: SnackBarBehavior.floating,
      );
      ScaffoldMessenger.of(context).showSnackBar(snacks);
    }
  }

  submitform() {
    // print('$firstname $lastname $email $password');
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 10,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('FirstName: $firstname'),
            ),
            ListTile(
              title: Text('LastName: $lastname'),
            ),
            ListTile(
              title: Text('MobileNo: $mobileno'),
            ),
            ListTile(
              title: Text('Email: $email'),
            ),
            ListTile(
              title: Text('Password: $password'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter First name',
                ),
                key: const ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Enter First Name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Last name'),
                key: const ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Enter Last Name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  lastname = value.toString();
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Enter Mobile Number'),
                key: const ValueKey('mobileno'),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10)
                ],
                validator: (value) {
                  if (value.toString().isEmpty ||
                      value.toString().length != 10) {
                    return 'Mobile number should of 10 digits';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  mobileno = value.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Email'),
                key: const ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty ||
                      !value.toString().contains('@')) {
                    return 'Enter valid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  email = value.toString();
                },
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(_obscureText
                        ? Icons.remove_red_eye_sharp
                        : Icons.visibility_off_sharp),
                  ),
                ),
                key: const ValueKey('password'),
                validator: (value) {
                  if (value.toString().length <= 7) {
                    return 'Minimum length of password should be 8';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value.toString();
                },
              ),
              TextButton(
                onPressed: () {
                  trysubmit();
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
