

import 'package:flutter/material.dart';

// 공통으로 쓰이는 상수 저장 파일 (색깔, 문자, 리스트 등)

const orange = Color.fromRGBO(243, 166, 131, 1);
const orange2 = Color.fromRGBO(243, 166, 131, 0.4);
const pink = Color.fromRGBO(255, 130, 130, 1);
const dark_yellow = Color.fromRGBO(247, 215, 148, 1);
const navy = Color.fromRGBO(89, 98, 117, 1);
const dark_navy = Color.fromRGBO(48, 57, 82, 1);
const light_navy = Color.fromRGBO(119, 139, 235, 1);


// 배경화면 그라데이션
const backgroundGradient=BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [orange,orange2])
    );


const KRW = 'KRW - korea(₩)';
const JPY = 'JPY - Japan(¥)';
const USD = "USD - USA(\$)";
const CNY = "CNY - China(¥)";
const EUR = "EUR - Europe(€)";
