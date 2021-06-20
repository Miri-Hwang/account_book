import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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