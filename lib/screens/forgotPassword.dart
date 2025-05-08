import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_rounded)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot password", style: boldText()),
                  SizedBox(height: 50),
                  emailOnly(),

                  SizedBox(height: 25),
                  buttonForall('SEND'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
