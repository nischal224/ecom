import 'package:flutter/material.dart';

class Fulters extends StatefulWidget {
  const Fulters({super.key});

  @override
  State<Fulters> createState() => _FultersState();
}

class _FultersState extends State<Fulters> {
  double start = 100.0;
  double end = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text('Filters'),
        centerTitle: true,
        elevation: 5.0,
      ),
      bottomSheet: Material(
        elevation: 8.0,
        child: Container(
          padding: EdgeInsets.all(25),
          height: 104,

          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text("Discard"),
                ),
              ),
              SizedBox(width: 55),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text("Apply", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                "Price range",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Material(
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('\$78'), Text('\$143')],
                      ),
                      RangeSlider(
                        values: RangeValues(start, end),
                        labels: RangeLabels(
                          '\$ ${start.toStringAsFixed(0)}',
                          '\$ ${end.toStringAsFixed(0)}',
                        ),
                        onChanged: (value) {
                          setState(() {
                            start = value.start;
                            end = value.end;
                          });
                        },
                        min: 20,
                        max: 200.0,
                        divisions:
                            14, // Creates labeled tick marks (e.g., 10, 15, 20, ... 80)
                        activeColor: Color.fromRGBO(219, 48, 34, 100),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text('Colors', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Material(
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,

                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),

                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent,

                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Sizes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Material(
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text('XS'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.redAccent,
                        ),
                        child: Text('S', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.redAccent,
                        ),
                        child: Text('M', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text('L'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text('XL'),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Material(
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white,
                  child: Wrap(
                    runSpacing: 25,
                    verticalDirection: VerticalDirection.down,
                    spacing: 25,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ALL"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ALL"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ALL"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ALL"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ALL"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
