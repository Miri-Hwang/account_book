import 'package:account_book/setting/components/setting_items.dart';
import 'package:flutter/material.dart';


class SettingSelectbox extends StatefulWidget {
  SettingSelectbox({Key? key,var list}) : super(key: key){
    this.list = list;
  }
  var list;
  @override
  _SettingSelectboxState createState() => _SettingSelectboxState(list);
}

class _SettingSelectboxState extends State<SettingSelectbox> {
  _SettingSelectboxState(var list){
    this.list = list;
  }
  var list=[];
  @override
  Widget build(BuildContext context) {
    return Column(
        children : [
          getSelectList(),

        ]
    );
  }
  
  Widget getSelectList(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list.map((e) {

        return Text(e);
      }).toList(),
    );
  }
  
}