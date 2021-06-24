import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';



class SettingMenuButton extends StatelessWidget {
  SettingMenuButton(var text){
    this.text = text;
  }
  var text;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
          color: orange,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w900
            ),
          )
        )
      ],
    );
  }
}