import 'package:account_book/components/app_bar.dart';
import 'package:account_book/components/bottom_icons.dart';
import 'package:account_book/constants.dart';
import 'package:account_book/setting/backup/components/backup_menu.dart';
import 'package:account_book/setting/components/setting_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Backup extends StatefulWidget {
  Backup({Key? key, }) : super(key: key);
  @override
  _BackupState createState() => _BackupState();
}

class _BackupState extends State<Backup> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: backgroundGradient,
          child: Column(
            children: [
              Expanded(child: AccountAppBar("백업 / 복원"),flex: 1,),
              Expanded(child: BackupMenu(),flex: 8,),
              Expanded(child: BottomIcons(),flex: 1,),
            ],
          ),
        )
    );
  }
}

