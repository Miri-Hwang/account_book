import 'package:flutter/material.dart';

class CurrentDate with ChangeNotifier{
  DateTime currentDate = DateTime.now();

  DateTime get getDate => currentDate;

  void setSelectedDate(DateTime date){
    currentDate = date;
    notifyListeners();
  }

  void setNextMonth(){
    currentDate = DateTime.utc(currentDate.year, currentDate.month+1, currentDate.day);
    notifyListeners();
  }

  void setPreviousMonth(){
    currentDate = DateTime.utc(currentDate.year, currentDate.month-1, currentDate.day);
    notifyListeners();
  }

}