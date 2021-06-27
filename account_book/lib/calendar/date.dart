import 'package:flutter/material.dart';

class Date with ChangeNotifier{
  DateTime currentDate = DateTime.now();

  DateTime get getDate => currentDate;

  void setNextMonth(){
    currentDate = DateTime.utc(currentDate.year, currentDate.month+1, currentDate.day);
    notifyListeners();
  }

  void setPreviousonth(){
    currentDate = DateTime.utc(currentDate.year, currentDate.month-1, currentDate.day);
    notifyListeners();

  }
}