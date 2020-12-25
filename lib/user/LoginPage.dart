import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userName = new TextEditingController(); // 初始化给表单赋值
  var password;
  var checkBoxState = true;
  var sex;
  @override
  void initState() {
    super.initState();
    _userName.text = "我是默认值";
  }

  List hobby = [
    {"value": true, "name": "打游戏"},
    {"value": false, "name": "睡觉"},
    {"value": true, "name": "吃饭"}
  ];
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: [
          Text('${this.hobby[i]['name']}:'),
          Checkbox(
              value: this.hobby[i]['value'],
              onChanged: (value) {
                setState(() {
                  this.hobby[i]['value'] = value;
                });
              })
        ],
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Column(children: [
          TextField(
            decoration: InputDecoration(hintText: '请输入用户名'),
            controller: _userName,
            // onChanged: (value) {  //不用onchanged也行，已经实现了双向绑定
            //   setState(() {
            //     this._userName.text = value;
            //   });
            // },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: '请输入密码'),
            onChanged: (value) {
              setState(() {
                this.password.text = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: this.checkBoxState,
                onChanged: (value) {
                  setState(() {
                    this.checkBoxState = value;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: [
              Text('男'),
              Radio(
                value: 1,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex, // groupValue 一致则视为相同按钮组
              ),
              Text('女'),
              Radio(
                value: 2,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              )
            ],
          ),
          CheckboxListTile(
            value: this.checkBoxState,
            onChanged: (value) {
              setState(() {
                this.checkBoxState = value;
              });
            },
            activeColor: Colors.red,
            title: Text('标题'),
            subtitle: Text("副标题"),
          ),
          Row(
            children: [
              Text("习惯:"),
              Row(
                children: this._getHobby(),
              )
            ],
          ),
          Container(
            width: double.infinity, // 宽度和外层容器一样宽
            height: 40,
            child: RaisedButton(
                child: Text("登录获取表单值"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('用户名${this._userName.text}');
                  print('密码${this.password}');
                  print('复选框${this.checkBoxState}');
                  print('单选框${this.sex}');
                  print('复选框组${this.hobby}');
                }),
          ),
          RaisedButton(
              child: Text("表单demo"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/formDemo');
              })
        ]));
  }
}
