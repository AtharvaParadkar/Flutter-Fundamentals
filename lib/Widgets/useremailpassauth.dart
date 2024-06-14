import "package:flutter/material.dart";
import "package:flutter_basics/functions/authfunctions.dart";

class UserEmailPassAuth extends StatefulWidget {
  const UserEmailPassAuth({super.key});

  @override
  State<UserEmailPassAuth> createState() => _UserEmailAuthState();
}

class _UserEmailAuthState extends State<UserEmailPassAuth> {
  final _formskey = GlobalKey<FormState>();
  bool isLogedin = false;
  String username = '', email = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email/Pass Authentication'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formskey,
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogedin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(hintText: 'Enter Username'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter Username";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'Enter Email'),
                validator: (value) {
                  if (value.toString().isEmpty ||
                      !value.toString().contains('@')) {
                    return "Enter valid Email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value.toString().isEmpty || value.toString().length < 9) {
                    return "Enter Password > = 8";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formskey.currentState!.validate()) {
                      _formskey.currentState!.save();
                      isLogedin
                          ? login(email, password)
                          : signup(email, password);
                    }
                  },
                  child: isLogedin ? Text('Login') : Text('Signup'),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogedin = !isLogedin;
                  });
                },
                child: isLogedin
                    ? Text('Dont have an Account? Signup')
                    : Text('Already Signed up? Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
