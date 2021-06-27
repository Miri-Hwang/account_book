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
          decoration: BoxDecoration(
            color: orange,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0.0, 5.0), //(x,y)
                blurRadius: 10.0,
              ),//BoxShadow
            ],
          ),
          padding: EdgeInsets.fromLTRB(50, 8, 50, 8),
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