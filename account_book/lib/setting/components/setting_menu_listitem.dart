import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';



class SettingMenuListItem extends StatelessWidget {
  SettingMenuListItem(var text){
    this.text = text;
  }
  var text;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
          padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}