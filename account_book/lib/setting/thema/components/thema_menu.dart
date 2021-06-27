import 'package:account_book/constants.dart';
import 'package:account_book/setting/components/setting_menu_appbar.dart';
import 'package:account_book/setting/components/setting_menu_button.dart';
import 'package:account_book/setting/components/setting_menu_listitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemaMenu extends StatelessWidget {
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
                          SettingMenuAppbar(text: "Light", color: orange),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    color: orange,
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    color: pink,
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    color: dark_yellow,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    flex: 35,
                  ),
                  Expanded(
                    child: Row(),
                    flex: 5,
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
                          SettingMenuAppbar(text: "Dark", color: navy),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  color: navy,
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  color: dark_navy,
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  color: light_navy,
                                ),
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
