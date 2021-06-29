import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constants.dart';
import 'date.dart';

class Calendar extends StatefulWidget {
  Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {


  @override
  Widget build(BuildContext context) {

    CurrentDate _currentDate = Provider.of<CurrentDate>(context);

    TextButton calendarButton(String text, bool isNext) {
      return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: pink,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))

        ),
        onPressed: (){
          setState(() {
            isNext?
            // next month
            context.read<CurrentDate>().setNextMonth():
            //previous month
            context.read<CurrentDate>().setPreviousMonth()
            ;

          });
        },
        child: Text(
          text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
        ),
      );
    }
    return Row(
      children: [
        // Calendar
        Expanded(
            flex: 85,
            child: Container(
              padding: const EdgeInsets.only(top: 22, left: 16, right: 16),
              color: Colors.white,
              child: TableCalendar(
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerVisible: false,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                selectedDayPredicate: (day)=>isSameDay(day, _currentDate.getDate),
                onDaySelected: (selectedDay, focusedDay){
                  setState(() {
                    context.read<CurrentDate>().setSelectedDate(focusedDay);
                  });
                },
                onPageChanged: (date){
                  context.read<CurrentDate>().setSelectedDate(date);
                },
                focusedDay: _currentDate.getDate,

                locale: Localizations.localeOf(context).languageCode,
                rowHeight: 60,
                daysOfWeekHeight : 20,
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: true,
                  weekendTextStyle: TextStyle().copyWith(color: Colors.red),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                    weekendStyle: TextStyle().copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                    weekdayStyle: TextStyle().copyWith(fontWeight: FontWeight.bold)
                ),


              ),
            )),
        // Calendar Tabs
        Expanded(
            flex: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                calendarButton("\n이\n전\n달\n", false),
                SizedBox(height: 10,),
                calendarButton("\n다\n음\n달\n", true),


              ],
            )),

      ],
    );

  }


}
