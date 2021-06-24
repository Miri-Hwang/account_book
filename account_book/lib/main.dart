import 'package:account_book/calendar/calendar.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/backup/backup.dart';
import 'package:account_book/setting/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Setting(),
    );
  }
}


