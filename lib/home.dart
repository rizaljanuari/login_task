import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String user = '';
  String pass = '';

  Home(this.user, this.pass);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username kamu : ' + user),
            Text('Password kamu : ' + pass),
            MaterialButton(
              child: Text('Keluar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
