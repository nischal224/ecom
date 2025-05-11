import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> with TickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_rounded),
          actions: [
            Padding(padding: EdgeInsets.all(20.0), child: Icon(Icons.search)),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Orders',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(child: Text('Delivered')),
                  Tab(child: Text('Processing')),
                  Tab(child: Text('Cancelled')),
                ],
              ),

              SizedBox(height: 10),

              Expanded(
                child: TabBarView(
                  physics: ClampingScrollPhysics(),

                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.green,
                          ),
                          SizedBox(height: 15),
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.green,
                          ),
                          SizedBox(height: 15),

                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.green,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.orange,
                          ),
                          SizedBox(height: 15),
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.orange,
                          ),
                          SizedBox(height: 15),

                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.red,
                          ),
                          SizedBox(height: 15),
                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.red,
                          ),
                          SizedBox(height: 15),

                          orders(
                            '112',
                            '111',
                            'IW3475453455',
                            '3',
                            '112\$',
                            'details',
                            'Delivered',
                            Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {});
            currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
