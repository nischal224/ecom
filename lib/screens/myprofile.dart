import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.search)]),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My profile',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://images.pexels.com/photos/1084554/pexels-photo-1084554.jpeg?auto=compress&cs=tinysrgb&w=600',
                      height: 64,
                      width: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Matilda Brown',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('matildabrown@mail.com'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              myProfile('My orders', 'Already have 12 orders'),
              myProfile('Shippingaddress', '3 addresses'),
              myProfile('Payment methods', 'Visa **34'),
              myProfile('Promocodes', 'You have special promocodes'),
              myProfile('My reviews', 'Reviews for 4 items'),
              myProfile('Settings', 'Notifications,password'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        elevation: 8.0,
        currentIndex: 4,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
