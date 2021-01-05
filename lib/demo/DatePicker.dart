import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  DatePicker({Key key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var now = DateTime.now();
  @override
  void initState() {
    super.initState();
    print(now);
    print(now.millisecondsSinceEpoch);
    print(DateTime.fromMillisecondsSinceEpoch(15599657091155));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("时间"),
    );
  }
}
