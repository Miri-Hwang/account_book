import 'package:account_book/components/app_bar.dart';
import 'package:account_book/components/bottom_icons.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/thema/components/thema_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Thema extends StatefulWidget {
  Thema({Key? key, }) : super(key: key);
  @override
  _ThemaState createState() => _ThemaState();
}

class _ThemaState extends State<Thema> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: backgroundGradient,
          child: Column(
            children: [
              Expanded(child: AccountAppBar(text:"테마"),flex: 1,),
              Expanded(child: ThemaMenu(),flex: 8,),
              Expanded(child: BottomIcons(),flex: 1,),
            ],
          ),
        )
    );
  }
}

