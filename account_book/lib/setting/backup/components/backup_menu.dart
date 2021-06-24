import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_menu_appbar.dart';
import 'package:account_book/setting/components/setting_menu_button.dart';
import 'package:account_book/setting/components/setting_menu_listitem.dart';
import 'package:flutter/material.dart';



class BackupMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SettingMenuAppbar("초기화"),
          SettingMenuListItem("전체 초기화"),
          SettingMenuListItem("가계부 내역만 초기화 "),
          Container(
            margin: EdgeInsets.only(top: 20),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SettingMenuButton("취소"),
                SettingMenuButton("확인"),
              ],
            )
          )
        ],
      ),
    );
  }


}
