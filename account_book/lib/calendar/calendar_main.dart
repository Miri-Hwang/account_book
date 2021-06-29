import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/bottom_icons.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar.dart';
import 'components/app_bar_date.dart';
import 'date.dart';



class CalendarMain extends StatefulWidget {
  CalendarMain({Key? key, }) : super(key: key);

  @override
  _CalendarMainState createState() => _CalendarMainState();
}

class _CalendarMainState extends State<CalendarMain> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: backgroundGradient,
        child: Column(
          children: [
            Expanded(child: CalendarAppbarDate(),flex: 1,),
            Expanded(child: Calendar(),flex: 8,),
            Expanded(child: BottomIcons(),flex: 1,),
          ],
        ),
      )
    );
  }
}




