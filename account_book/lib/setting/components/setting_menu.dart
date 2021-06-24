import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_items.dart';
import 'package:flutter/material.dart';


class SettingMenu extends StatefulWidget {
  SettingMenu({Key? key}) : super(key: key);

  @override
  _SettingMenuState createState() => _SettingMenuState();
}

class _SettingMenuState extends State<SettingMenu> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(flex:1,child: Row()),
        Expanded(flex:3,child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SettingItem("테마",'assets/paint.svg'),
            SettingItem("카테고리 관리",'assets/menu.svg'),
            SettingItem("화폐",'assets/money.svg'),
          ],
        )),
        Expanded(flex:3,child:
        Row(
          children: [
            SettingItem("백업/복원",'assets/recycle.svg'),
            SettingItem("초기화",'assets/data.svg'),
            SettingItem("문의하기",'assets/mail.svg'),
          ],
        )),
        Expanded(flex:4,child: Row()),
      ],
    );
  }
}