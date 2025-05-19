import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Shippingaddress extends StatefulWidget {
  const Shippingaddress({super.key});

  @override
  State<Shippingaddress> createState() => _ShippingaddressState();
}

class _ShippingaddressState extends State<Shippingaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Shipping Addresses'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.pink,
                color: Colors.yellow,
                padding: EdgeInsets.all(25),
              ),
              shippingAddress(
                'Jane Doe',
                '3 Newbridge Court',
                'chino Hills',
                'ca',
                '91709',
                'United States',
                true,
              ),
              Appwidgets.sizeboxSmallheight(),
              shippingAddress(
                'Jane Doe',
                '3 Newbridge Court',
                'chino Hills',
                'ca',
                '91709',
                'United States',
                true,
              ),
              Appwidgets.sizeboxSmallheight(),
              shippingAddress(
                'Jane Doe',
                '3 Newbridge Court',
                'chino Hills',
                'ca',
                '91709',
                'United States',
                false,
              ),
              FloatingActionButton(
                onPressed: () => Alignment.bottomRight,

                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
