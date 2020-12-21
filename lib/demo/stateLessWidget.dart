import 'package:flutter/material.dart';

class HomePageStateLess extends StatelessWidget {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Text('$num'),
        RaisedButton(
          child: Text('按钮1'),
          onPressed: () {
            this.num++;
            // 数字实时增加但是页面状态不会变
            print('数字${this.num}');
          },
        )
      ],
    );
  }
}
