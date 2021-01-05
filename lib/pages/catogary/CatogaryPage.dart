import 'package:flutter/material.dart';
import '../../demo/DatePicker.dart';

class CatogaryPage extends StatefulWidget {
  CatogaryPage({Key key}) : super(key: key);

  @override
  _CatogaryPageState createState() => _CatogaryPageState();
}

class _CatogaryPageState extends State<CatogaryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DatePicker(),
    );
  }
}
