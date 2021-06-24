import 'package:account_book/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SettingItem extends StatelessWidget {
  SettingItem(var text,var svgPath){
    this.text=text;
    this.svgPath=svgPath;
  }
  var text;
  var svgPath;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: pink,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(svgPath,width: 55 ,height: 55 ,)
              ],
            ),
          ),
          Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
          ),
        ],
      ),
    );
  }
}

