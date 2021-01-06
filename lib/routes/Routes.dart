import 'package:flutter/material.dart';
import '../Tabs.dart';
import '../demo/Search.dart';
import '../user/LoginPage.dart';
import '../user/FormDemo.dart';
import '../demo/DioDemo.dart';

// 配置路由
final routes = {
  '/': (context) => Tabs(index: 2),
  '/login': (context) => LoginPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/formDemo': (context) => FormDemo(),
  '/dioTest': (context) => DioDemo()
};

// 针对路由传参数封装的方法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
