import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 点击tab主体高亮颜色
          splashColor: Colors.white70), //点击tab 水波纹的颜色
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('xujun'),
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navagation',
              onPressed: () => debugPrint('flutter 测8试'),
            ),
            elevation: 80.0, // 标题栏下方的的阴影
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navagation',
                onPressed: () => debugPrint('flutter 搜索'),
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38, // 未被选中的标签样式
              indicatorColor: Colors.black54, //横线样式
              indicatorSize: TabBarIndicatorSize.label, // 横线和label一样长
              indicatorWeight: 3.0, // 横线粗细
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.local_airport)),
                Tab(icon: Icon(Icons.local_atm))
              ],
            ),
          ),
          body: TabBarView(
            // tab内容区 需要和tabs 里的数量一致
            children: <Widget>[
              Icon(
                Icons.local_florist,
                size: 180,
                color: Colors.black12,
              ),
              Icon(
                Icons.local_airport,
                size: 180,
                color: Colors.black12,
              ),
              Icon(
                Icons.local_atm,
                size: 180,
                color: Colors.black12,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero, // 边距为零
              children: <Widget>[
                DrawerHeader(
                  child: Text('header'.toUpperCase()),
                  decoration: BoxDecoration(color: Colors.grey[100]),
                )
              ],
            ),
          )),
    );
  }
}
