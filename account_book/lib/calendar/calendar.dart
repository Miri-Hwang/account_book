import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';
import '../bottom_icons.dart';
import 'components/app_bar_date.dart';


class Calendar extends StatefulWidget {
  Calendar({Key? key, }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: backgroundGradient,
        child: Column(
          children: [
            Expanded(child: CalendarAppbarDate(),flex: 1,),
            Expanded(child: AccountCalendar(),flex: 8,),
            Expanded(child: BottomIcons(),flex: 1,),
          ],
        ),
      )
    );
  }
}



class AccountCalendar extends StatefulWidget {
  AccountCalendar({Key? key}) : super(key: key);

  @override
  _AccountCalendarState createState() => _AccountCalendarState();
}

class _AccountCalendarState extends State<AccountCalendar> {
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          flex: 85,
          child: Container(
            color: Colors.white,
          )),
        Expanded(
          flex: 15,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                  
                  child: Text(
                      "이전달",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
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

                  child: Text(
                    "다음달",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ))
      ],
    );
  }
}

