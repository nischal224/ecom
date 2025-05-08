import 'package:flutter/material.dart';

class Sortsby extends StatefulWidget {
  const Sortsby({super.key});

  @override
  State<Sortsby> createState() => _SortsbyState();
}

class _SortsbyState extends State<Sortsby> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Women's tops",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tshirts('T-Shirts'),
                  SizedBox(width: 5),
                  tshirts('Crop tops'),
                  SizedBox(width: 5),
                  tshirts('Blouses'),
                  SizedBox(width: 5),
                  tshirts('Sari'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 64,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.filter_list_rounded),
                      Text('Filters', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 137,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.filter_list_rounded),
                      Text(
                        'Price lowest to high',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => _showReviewModal(context),
                  child: Icon(Icons.list_rounded),
                ),
              ],
            ),
            Expanded(child: filters()),
          ],
        ),
      ),
    );
  }
}

Widget tshirts(String clothesname) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: Color.fromRGBO(34, 34, 34, 100),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(clothesname, style: TextStyle(color: Colors.white)),
      ),
    ],
  );
}

Widget filters() {
  return GridView.builder(
    padding: EdgeInsets.all(10),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.75,
    ),
    itemCount: 8,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    'https://images.pexels.com/photos/31737046/pexels-photo-31737046/free-photo-of-woman-in-cozy-scarf-enjoys-scenic-beach-view.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    fit: BoxFit.cover,
                    height: 120,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: -15,
                  right: 10,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.hearing, size: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // space below icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(Icons.star, size: 14, color: Colors.orange);
                    }),
                  ),
                  SizedBox(height: 4),
                  Text('Mango'),
                  Text(
                    'T-Shirt SPANISH',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text('9\$'),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _showReviewModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    barrierColor: const Color.fromARGB(221, 170, 150, 150),
    builder:
        (context) => Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 5,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Sort by",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Popular'),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
  );
}
