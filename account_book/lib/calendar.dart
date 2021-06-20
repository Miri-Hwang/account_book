import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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

class CalendarAppbarDate extends StatefulWidget {
  CalendarAppbarDate({Key? key}) : super(key: key);

  @override
  _CalendarAppbarDateState createState() => _CalendarAppbarDateState();
}

class _CalendarAppbarDateState extends State<CalendarAppbarDate> {
  var _selectedDate = '2021.06';
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
              Text(_selectedDate,
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

class BottomIcons extends StatefulWidget {
  BottomIcons({Key? key}) : super(key: key);

  @override
  _BottomIconsState createState() => _BottomIconsState();
}

class _BottomIconsState extends State<BottomIcons> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/note.svg',width: 30,height: 30,),
          SvgPicture.asset('assets/calendar.svg',width: 30,height: 30,),
          SvgPicture.asset('assets/setting.svg',width: 30,height: 30,),
        ],
      ),
    );
  }
}