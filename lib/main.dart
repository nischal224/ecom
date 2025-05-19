import 'package:ecom/practise/sortsby.dart';
import 'package:ecom/screens/favorites.dart';
import 'package:ecom/screens/paymentmethods.dart';
import 'package:ecom/screens/shippingAddress.dart';
import 'package:ecom/screens/signup.dart';
import 'package:ecom/screens/summersales.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Signup());
  }
}
