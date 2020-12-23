import 'package:flutter/material.dart';
import 'package:flutterdemo/demo/ListContent.dart';
import 'demo/stateLessWidget.dart';
import 'routes/Routes.dart';
import 'Tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      theme: ThemeData(primarySwatch: Colors.blue),
      // 不使用home,使用初始化加载的路由(在devTool模式下可能不生效，报错'/'为null)
      initialRoute: '/',
      // 路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
