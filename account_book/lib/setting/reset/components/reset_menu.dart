import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_menu_appbar.dart';
import 'package:account_book/setting/components/setting_menu_button.dart';
import 'package:account_book/setting/components/setting_menu_listitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ResetMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          Expanded(child: Row(),flex: 1,),
          Expanded(child: Column(
            children: [
              Expanded(child: Row(),flex: 10,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0.0, 5.0), //(x,y)
                      blurRadius: 10.0,
                    ),//BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    SettingMenuAppbar(text:"초기화"),
                    Divider(color: orange,),
                    SettingMenuListItem("전체 초기화"),
                    Divider(color: orange,),
                    SettingMenuListItem("가계부 내역만 초기화"),
                    Divider(color: orange,),
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
              ),flex: 45,),
              Expanded(child: Row(),flex:45,),
            ],
          ),flex: 8,),
          Expanded(child: Row(),flex: 1,)
        ],
      )
    );
  }


}
