import 'package:ecom/screens/mybag.dart';
import 'package:ecom/screens/myorders.dart';
import 'package:ecom/screens/myprofile.dart';
import 'package:ecom/screens/settings2.dart';
import 'package:ecom/screens/womensTop.dart';
import 'package:ecom/widgets/appwidgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Womenstop());
  }
}
