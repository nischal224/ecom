import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  Text("Sign Up", style: boldText()),
                  SizedBox(height: 50),
                  textFormFieldLogin(),
                  SizedBox(height: 15),
                  haveAccount('Already have an account?'),
                  SizedBox(height: 25),
                  buttonForall('SIGN UP'),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Or sign up with social account",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              SizedBox(height: 15),
              facebookAndGoogle(),
            ],
          ),
        ),
      ),
    );
  }
}
