import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Paymentmethods extends StatefulWidget {
  const Paymentmethods({super.key});

  @override
  State<Paymentmethods> createState() => _PaymentmethodsState();
}

class _PaymentmethodsState extends State<Paymentmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          atmsnack(context);
        },
        backgroundColor: Colors.black,

        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text("Payment methods"),
        centerTitle: true,
        elevation: 8.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                "Your payment cards",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              atm(),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
