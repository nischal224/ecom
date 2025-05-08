import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;

  final List _pages = [
    Center(child: Text("Home")),
    Center(child: Text("shop")),
    Center(child: Text("Bag")),
    Center(child: Text("Favorites")),
    Center(child: Text("Profile")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.pexels.com/photos/7142987/pexels-photo-7142987.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250),
                Text(
                  "Fashion Sale",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.black45,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 44, 7, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text('Check', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,

                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NEW',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text('View all')],
                      ),
                      Text("You've never seen it before!"),

                      SizedBox(height: 15),
                      SingleChildScrollView(
                        padding: EdgeInsets.all(15),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(imageUrls.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Stack(
                                children: [
                                  Image.network(
                                    imageUrls[index],
                                    fit: BoxFit.cover,
                                    height: 260,
                                    width: 150,
                                  ),
                                  
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 24,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bagShopping),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  final List imageUrls = [
    'https://images.pexels.com/photos/7142987/pexels-photo-7142987.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3184194/pexels-photo-3184194.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3771664/pexels-photo-3771664.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];
}
