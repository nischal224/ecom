import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Summersales extends StatefulWidget {
  const Summersales({super.key});

  @override
  State<Summersales> createState() => _SummersalesState();
}

class _SummersalesState extends State<Summersales>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onFabPressed() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 5));

    setState(() {
      isLoading = false;
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('FAB action completed')));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text('Categories'),
          centerTitle: true,
          actions: [Icon(Icons.search)],
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(child: Text('Women')),
                Tab(child: Text('Men')),
                Tab(child: Text('Kids')),
              ],
            ),
            Expanded(
              // Wrap TabBarView in Expanded to avoid overflow
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTabContent(),
                  _buildTabContent(),
                  _buildTabContent(),
                ],
              ),
            ),
          ],
        ),

        // FAB with loading spinner
        floatingActionButton: FloatingActionButton(
          onPressed: isLoading ? null : _onFabPressed,
          child:
              isLoading
                  ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                  : Icon(Icons.refresh),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          shippingAddress(
            'Jane Doe',
            '3 Newbridge Court',
            'Chino Hills',
            'CA',
            '91709',
            'United States',
            true,
          ),
          shippingAddress(
            'Jane Doe',
            '3 Newbridge Court',
            'Chino Hills',
            'CA',
            '91709',
            'United States',
            true,
          ),
          shippingAddress(
            'Jane Doe',
            '3 Newbridge Court',
            'Chino Hills',
            'CA',
            '91709',
            'United States',
            true,
          ),
        ],
      ),
    );
  }
}
