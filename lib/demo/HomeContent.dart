import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = List();
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(
          title: Text("标题"),
          subtitle: Text('副标题'),
          leading: Image.network(
            'https://i0.hdslb.com/bfs/sycp/creative_img/202012/35661f9f51e95b65811e378de4b4f64f.jpg',
            width: 100.0,
            height: 100.0,
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: this._getData(),
      ),
    );
  }
}
