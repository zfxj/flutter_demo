import 'package:flutter/material.dart';
import 'package:flutterdemo/demo/ListContent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo11222R1"),
        ),
        body: ListContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
