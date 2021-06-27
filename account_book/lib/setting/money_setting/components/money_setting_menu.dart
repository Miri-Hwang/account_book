import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_menu_appbar.dart';
import 'package:account_book/setting/components/setting_menu_button.dart';
import 'package:account_book/setting/components/setting_menu_listitem.dart';
import 'package:account_book/setting/components/setting_selectbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoneySettingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Row(),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(),
                    flex: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0.0, 5.0), //(x,y)
                            blurRadius: 10.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Column(
                        children: [
                          SettingMenuAppbar(text: '화폐', color: pink),
                          Expanded(child: Column(
                            children: [
                              SettingSelectbox(
                                list : [
                                  KRW,
                                  JPY,
                                  USD,
                                  CNY,
                                  EUR,
                                ]
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SettingMenuButton('취소'),
                                  SettingMenuButton('확인'),
                                ],
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    flex: 35,
                  ),
                  Expanded(
                    child: Row(),
                    flex: 30,
                  ),
                ],
              ),
              flex: 8,
            ),
            Expanded(
              child: Row(),
              flex: 1,
            )
          ],
        ));
  }
}
