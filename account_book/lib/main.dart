import 'package:account_book/calendar/calendar_main.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/backup/backup.dart';
import 'package:account_book/setting/money_setting/money_setting.dart';
import 'package:account_book/setting/reset/reset.dart';
import 'package:account_book/setting/setting.dart';
import 'package:account_book/setting/thema/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'calendar/date.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_)=>CurrentDate()),

      ],
      child: MyApp(),)
      );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        // const Locale('en', ''), // English, no country code
        const Locale('ko', ''), // Korean, no country code

      ],
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Thema(),
    );
  }
}


