import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';



class AccountAppBar extends StatelessWidget {
  AccountAppBar({var text,var color = pink}){
    this.text = text;
    this.color = color;
  }
  var color;
  var text;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          width: 170,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight:Radius.circular(10.0),),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0.0, 5.0), //(x,y)
                blurRadius: 10.0,
              ),//BoxShadow
            ],
          ),
          margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
          padding: EdgeInsets.fromLTRB(5, 5, 50, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 30.0,
              ),
              Text(text,
                style: TextStyle(
                  color: Colors.white,
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
