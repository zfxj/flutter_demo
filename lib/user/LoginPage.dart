import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Column(children: [
        Text('登录页面'),
        RaisedButton(
            child: Text("替换路由，回到首页"),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            })
      ]),
    );
  }
}
