import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Womenstop extends StatefulWidget {
  const Womenstop({super.key});

  @override
  State<Womenstop> createState() => _WomenstopState();
}

class _WomenstopState extends State<Womenstop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
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
                "Women's tops",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              Appwidgets.sizeboxSmallheight(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'T-shirts',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Crop tops',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Sleeveless',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Shirts',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Half-Shirts',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Appwidgets.sizeboxSmallheight(),
              Container(
                width: double.infinity,
                height: 24,
                decoration: BoxDecoration(color: Colors.white12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(width: 5),
                        Text('Filters'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.thumbs_up_down_outlined),
                        SizedBox(width: 5),
                        Text('Price: lowest to high'),
                      ],
                    ),
                    Row(children: [Icon(Icons.list_alt_rounded)]),
                  ],
                ),
              ),
              Appwidgets.sizeboxSmallheight(),
              womensTop(
                'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?auto=compress&cs=tinysrgb&w=600',
                'PullOver',
                'mango',
                Icon(Icons.star),
                '51\$',
                4,
                Colors.black,
              ),
              Appwidgets.sizeboxSmallheight(),

              womensTop(
                'https://images.pexels.com/photos/1857375/pexels-photo-1857375.jpeg?auto=compress&cs=tinysrgb&w=600',
                'Blouse',
                'mango',
                Icon(Icons.star),
                '51\$',
                2,
                Colors.black,
              ),
              SizedBox(height: 15),

              womensTop(
                'https://images.pexels.com/photos/32019617/pexels-photo-32019617/free-photo-of-young-woman-smoking-outdoors-in-casual-attire.jpeg?auto=compress&cs=tinysrgb&w=600',
                'T-Shirt',
                'mango',
                Icon(Icons.star),
                '51\$',
                5,
                Colors.red,
              ),
              SizedBox(height: 15),

              womensTop(
                'https://images.pexels.com/photos/4153176/pexels-photo-4153176.jpeg?auto=compress&cs=tinysrgb&w=600',
                'Shirt',
                'mango',
                Icon(Icons.star),
                '51\$',
                3,
                Colors.red,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (value) {
          setState(() {});
          current = value;
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  int current = 1;
}
