import 'package:flutter/material.dart';
import 'Search.dart';

class HomePageStateFul extends StatefulWidget {
  HomePageStateFul({Key key}) : super(key: key);

  @override
  _HomePageStateFulState createState() => _HomePageStateFulState();
}

class _HomePageStateFulState extends State<HomePageStateFul> {
  int num = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 100),
        Chip(label: Text('${this.num}')),
        RaisedButton(
            child: Text('按钮1'),
            onPressed: () {
              setState(() {
                this.num++;
                this.list.add('value');
                print('object');
              });
            }),
        RaisedButton(
            child: Text("跳转路由"),
            color: Colors.blue,
            textColor: Colors.white,
            // 基本路由跳转
            onPressed: () {
              // 基本路由跳转
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => SearchPage(title: "搜索页面")));

              // 命名路由（需要在根组件进行配置）
              Navigator.pushNamed(context, '/search');
            }),
        RaisedButton(
            child: Text("跳转路由并传值1"),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {"id": 123});
            })
      ],
    );
  }
}
