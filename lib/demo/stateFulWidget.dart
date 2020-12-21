import 'package:flutter/material.dart';

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
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.num++;
                this.list.add('value');
              });
            })
      ],
    );
  }
}
