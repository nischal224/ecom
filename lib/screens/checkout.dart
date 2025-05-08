import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text('checkout'),
        centerTitle: true,
        elevation: 8.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                'Shipping address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 15),
              Material(
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            'Jane Doe',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text('3 Newbridge Court'),
                      Text('Chino Hills,CA 91709, United States'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://imgs.search.brave.com/vPI6HsVNZrRHrAapQMjMPLi4QVWcVxeBzC0uZCILj-k/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wZW50/YWdyYW0tcHJvZHVj/dGlvbi5pbWdpeC5u/ZXQvZWU0NThkNGQt/YThlOC00MTc3LWIy/YTgtOTdkZjc2NmUy/ZTk5L2xoX21iX21h/c3RlcmNhcmRfMDIu/anBnP2F1dG89Y29t/cHJlc3MsZm9ybWF0/JmZpdD1taW4mZm09/anBnJnE9ODAmcmVj/dD0sLCwmdz02NDAm/Zm09anBnJnE9NzAm/YXV0bz1mb3JtYXQ',
                      fit: BoxFit.cover,
                      height: 60,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('**** **** **** 3947'),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Delivery method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(15),

                      width: 100,
                      child: Column(
                        children: [
                          Icon(FontAwesomeIcons.fedex, size: 50),
                          Text('2-3 days'),
                        ],
                      ),
                    ),
                  ),

                  Material(
                    elevation: 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(15),

                      width: 100,
                      child: Column(
                        children: [
                          Icon(FontAwesomeIcons.usps, size: 50),
                          Text('2-3 days'),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(15),

                      width: 100,
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.dhl,
                            size: 50,
                            color: Colors.deepOrange,
                          ),
                          Text('2-3 days'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order:'),
                  Text('112\$', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery:'),
                  Text('15\$', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Summary:'),
                  Text('127\$', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              buttonForall('SUBMIT ORDER'),
            ],
          ),
        ),
      ),
    );
  }
}
