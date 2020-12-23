import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  String title;
  final arguments;
  SearchPage({this.title = "默认名称", this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.title}"),
      ),
      body: Column(children: [
        Text(
            '搜索页面id=${this.arguments != null ? this.arguments['id'] : '没有传参数'}'),
        RaisedButton(
            child: Text("跳转登录"),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
        RaisedButton(
            child: Text("返回上一页"),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            })
      ]),
    );
  }
}
