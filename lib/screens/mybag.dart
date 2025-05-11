import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Mybag extends StatefulWidget {
  const Mybag({super.key});

  @override
  State<Mybag> createState() => _MybagState();
}

class _MybagState extends State<Mybag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bag',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              mybag(
                'https://images.pexels.com/photos/31978030/pexels-photo-31978030/free-photo-of-stylish-woman-in-faux-fur-coat-in-urban-setting.jpeg?auto=compress&cs=tinysrgb&w=600',
                'pullover',
                'Black',
                'L',
                '51\$',
                1,
              ),
              SizedBox(height: 15),
              mybag(
                'https://images.pexels.com/photos/31978030/pexels-photo-31978030/free-photo-of-stylish-woman-in-faux-fur-coat-in-urban-setting.jpeg?auto=compress&cs=tinysrgb&w=600',
                'pullover',
                'Black',
                'L',
                '51\$',
                1,
              ),
              SizedBox(height: 15),
              mybag(
                'https://images.pexels.com/photos/31978030/pexels-photo-31978030/free-photo-of-stylish-woman-in-faux-fur-coat-in-urban-setting.jpeg?auto=compress&cs=tinysrgb&w=600',
                'pullover',
                'Black',
                'L',
                '51\$',
                1,
              ),
              SizedBox(height: 15),
              Material(
                borderRadius: BorderRadius.circular(25),
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your promo code',
                      suffixIcon: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        ),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total amount'),
                  Text('124\$', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 15),
              buttonForall('CHECK OUT'),
            ],
          ),
        ),
      ),
    );
  }
}
