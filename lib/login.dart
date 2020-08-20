import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //key untuk snack bar
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  //textcontroller untuk menyimpan hasil inputan
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WELCOME TO MY LOGIN PAGE'),
            Container(
              padding: EdgeInsets.all(8),
              width: 240.0,
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: 240.0,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password',
                ),
              ),
            ),
            MaterialButton(
              child: Text('Login'),
              onPressed: () {
                setState(() {
                  username = usernameController.text;
                  password = passwordController.text;
                  if (username == 'admin' && password == 'admin') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home(username, password)));
                  } else {
                    _key.currentState.showSnackBar(
                      SnackBar(
                        content: Text('Username / password salah!'),
                      ),
                    );
                    usernameController.text = '';
                    passwordController.text = '';
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}


