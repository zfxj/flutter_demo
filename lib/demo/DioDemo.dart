import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioDemo extends StatefulWidget {
  DioDemo({Key key}) : super(key: key);

  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  @override
  void initState() {
    super.initState();
    this._getData();
  }

  List _list = [];
  _getData() async {
    var dio = Dio();
    var apiUrl = "http://a.itying.com/api/productlist";

    Response res = await dio.get(apiUrl);
    print('=================================>dio');
    print(res); // 不是json
    print(res.data); // json
    setState(() {
      this._list = res.data["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dioDemo"),
      ),
      body: this._list.length > 0
          ? ListView(
              children: this._list.map((value) {
                return ListTile(title: Text(value['title']));
              }).toList(), // map之后不是数组，需要转换成数组
            )
          : Text("加载中"),
    );
  }
}
