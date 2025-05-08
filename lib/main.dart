import 'package:ecom/practise/bottomsheet.dart';
import 'package:ecom/screens/login.dart';
import 'package:ecom/screens/mainpage/mainpage.dart';
import 'package:ecom/screens/paymentmethods.dart';
import 'package:ecom/screens/settings2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Settingstwo());
  }
}
