import "package:flutter/material.dart";

class UserEmailPassAuth extends StatefulWidget {
  const UserEmailPassAuth({super.key});

  @override
  State<UserEmailPassAuth> createState() => _UserEmailAuthState();
}

class _UserEmailAuthState extends State<UserEmailPassAuth> {
  final _formskey = GlobalKey<FormState>();
  bool isLogedin = false;

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
                          return "Enter valid Username";
                        } else {
                          return null;
                        }
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
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value.toString().isEmpty || value.toString().length < 9) {
                    return "Enter valid Password > = 8";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
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
