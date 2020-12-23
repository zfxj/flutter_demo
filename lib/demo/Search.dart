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
      body: Text(
          '搜索页面id=${this.arguments != null ? this.arguments['id'] : '没有传参数'}'),
    );
  }
}
