

import 'package:account_book/components/app_bar.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_menu.dart';
import 'package:account_book/setting/thema/components/thema_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_icons.dart';



class Setting extends StatefulWidget {
  Setting({Key? key, }) : super(key: key);
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: backgroundGradient,
          child: Column(
            children: [
              Expanded(child: AccountAppBar(text:"설정"),flex: 1,),
              Expanded(child: SettingMenu(),flex: 8,),
              Expanded(child: BottomIcons(),flex: 1,),
            ],
          ),
        )
    );
  }
}