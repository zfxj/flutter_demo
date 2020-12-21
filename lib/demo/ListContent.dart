import 'package:flutter/material.dart';
import 'res/listData.dart';

class ListContent extends StatelessWidget {
  // 自定义方法1
  // List<Widget> _getData() {
  //   List<Widget> list = List();
  //   for (var i = 0; i < 10; i++) {
  //     list.add(ListTile(
  //         title: Text("标题"),
  //         subtitle: Text('副标题'),
  //         leading: Image.network(
  //           'https://i0.hdslb.com/bfs/sycp/creative_img/202012/35661f9f51e95b65811e378de4b4f64f.jpg',
  //           width: 100.0,
  //           height: 100.0,
  //         )));
  //   }
  //   return list;
  // }
  List<Widget> _getData() {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imgUrl']),
            Text(value["title"])
          ],
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 一行的Widget数量
      crossAxisSpacing: 10.0, // 水平wiget之间的间距
      padding: EdgeInsets.all(10.0),
      children: this._getData(),
    );
  }
}
