import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map userInfo = {"userName": "张三", "age": 20};
    String userInfoString = '{"userName": "张三", "age": 20}';
    print(json.encode(userInfo)); // 将Map转为字符串类型

    Map u = json.decode(userInfoString);
    print(u); // 将字符串转为Map类型
    print(u['userName']); // 将字符串转为Map类型
    _getData();
  }

  List list = [];

  // 请求数据
  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var res = await http.get(apiUrl);
    if (res.statusCode == 200) {
      // print(res.body);
      setState(() {
        this.list = json.decode(res.body)['result'];
        print(this.list);
      });
    } else {
      print("失败${res.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请求数据Demo"),
      ),
      body: this.list.length > 0
          ? ListView(
              children: this.list.map((value) {
                return ListTile(title: Text(value['title']));
              }).toList(),
            )
          : Text("加载中"),
    );
  }
}
