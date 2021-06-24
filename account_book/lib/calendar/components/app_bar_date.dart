import 'package:flutter/material.dart';

import '../../constants.dart';

class CalendarAppbarDate extends StatefulWidget {
  CalendarAppbarDate({Key? key}) : super(key: key);

  @override
  _CalendarAppbarDateState createState() => _CalendarAppbarDateState();
}

class _CalendarAppbarDateState extends State<CalendarAppbarDate> {
  var _selectedMonth = '2021.06';
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: pink,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight:Radius.circular(10.0),),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(0.0, 5.0), //(x,y)
                blurRadius: 10.0,
              ),//BoxShadow
            ],
          ),
          margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
          padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_selectedMonth,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.white,
                size: 30.0,
              )
            ],
          ),
        )
      ],
    );
  }
}