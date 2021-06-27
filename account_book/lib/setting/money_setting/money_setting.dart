import 'package:account_book/components/app_bar.dart';
import 'package:account_book/components/bottom_icons.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/money_setting/components/money_setting_menu.dart';
import 'package:account_book/setting/thema/components/thema_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MoneySetting extends StatefulWidget {
  MoneySetting({Key? key, }) : super(key: key);
  @override
  _MoneySettingState createState() => _MoneySettingState();
}

class _MoneySettingState extends State<MoneySetting> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: backgroundGradient,
          child: Column(
            children: [
              Expanded(child: AccountAppBar(text:"화폐 설정"),flex: 1,),
              Expanded(child: MoneySettingMenu(),flex: 8,),
              Expanded(child: BottomIcons(),flex: 1,),
            ],
          ),
        )
    );
  }
}