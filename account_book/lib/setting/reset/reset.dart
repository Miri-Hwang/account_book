import 'package:account_book/components/app_bar.dart';
import 'package:account_book/components/bottom_icons.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/reset/components/reset_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Reset extends StatefulWidget {
  Reset({Key? key, }) : super(key: key);
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: backgroundGradient,
          child: Column(
            children: [
              Expanded(child: AccountAppBar(text:"초기화"),flex: 1,),
              Expanded(child: ResetMenu(),flex: 8,),
              Expanded(child: BottomIcons(),flex: 1,),
            ],
          ),
        )
    );
  }
}

