import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  Text("Login", style: boldText()),
                  SizedBox(height: 50),
                  emailPassword(),
                  SizedBox(height: 15),
                  haveAccount('Forgot your password'),
                  SizedBox(height: 25),
                  buttonForall('LOGIN'),
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
