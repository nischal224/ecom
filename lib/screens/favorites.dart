import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  int current = 1;
  Widget bottomNavigation() {
    return BottomNavigationBar(
      onTap: (value) {
        current = value;
        setState(() {});
      },
      currentIndex: current,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        BottomNavigationBarItem(icon: Icon(Icons.person_4), label: 'Profile'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: bottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Favorites', style: Appwidgets.headerBoldForall()),
              Appwidgets.sizeboxSmallheight(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    favToprow(30, 100, 'Summer', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'T-shirts', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'Shirts', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'Shirts', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'Shirts', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'Shirts', Colors.white),
                    Appwidgets.sizedboxsmallwidth(),
                    favToprow(30, 100, 'Shirts', Colors.white),
                  ],
                ),
              ),
              Appwidgets.sizeboxSmallheight(),
              filtersPriceforAll(
                Icons.filter_list_rounded,
                'Filters',
                Icons.unfold_more_sharp,
                'Price:Lowest to high',
                Icons.dialpad_outlined,
              ),
              Appwidgets.sizeboxSmallheight(),

              shirt(
                'https://images.pexels.com/photos/4236830/pexels-photo-4236830.jpeg?auto=compress&cs=tinysrgb&w=600',
                'LIME',
                'Shirt',
                'Blue',
                'L',
                '32\$',
                Icons.star,
                5,
              ),
              Appwidgets.sizeboxSmallheight(),

              shirt(
                'https://images.pexels.com/photos/4236830/pexels-photo-4236830.jpeg?auto=compress&cs=tinysrgb&w=600',
                'LIME',
                'Shirt',
                'Blue',
                'L',
                '32\$',
                Icons.star,
                3,
              ),
              Appwidgets.sizeboxSmallheight(),

              shirt(
                'https://images.pexels.com/photos/4236830/pexels-photo-4236830.jpeg?auto=compress&cs=tinysrgb&w=600',
                'LIME',
                'Shirt',
                'Blue',
                'L',
                '32\$',
                Icons.star,
                2,
              ),
              Appwidgets.sizeboxSmallheight(),

              shirt(
                'https://images.pexels.com/photos/4236830/pexels-photo-4236830.jpeg?auto=compress&cs=tinysrgb&w=600',
                'LIME',
                'Shirt',
                'Blue',
                'L',
                '32\$',
                Icons.star,
                1,
              ),
              Appwidgets.sizeboxSmallheight(),

              shirt(
                'https://images.pexels.com/photos/4236830/pexels-photo-4236830.jpeg?auto=compress&cs=tinysrgb&w=600',
                'LIME',
                'Shirt',
                'Blue',
                'L',
                '32\$',
                Icons.star,
                2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
