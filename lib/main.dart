import 'package:flutter/material.dart';
import 'package:flutterdemo/demo/ListContent.dart';
import 'demo/stateLessWidget.dart';
import 'demo/stateFulWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter12"),
        ),
        // body: ListContent(),
        // body: HomePageStateLess(),
        body: HomePageStateFul(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
