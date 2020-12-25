import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单demo'),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                      hintText: '请输入搜索内容',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))))),
              TextField(
                maxLength: 4,
                maxLines: 6,
                decoration: InputDecoration(hintText: "多行文本框"),
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: '密码框',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))))),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                      labelText: '用户名',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))))),
              TextField(
                  decoration: InputDecoration(
                      labelText: '用户名',
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))))),
            ],
          ),
        ),
        RaisedButton(
            child: Text("替换路由，回到首页"),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
      ]),
    );
  }
}
