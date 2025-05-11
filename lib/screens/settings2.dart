
import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Settingstwo extends StatefulWidget {
  const Settingstwo({super.key});

  @override
  State<Settingstwo> createState() => _SettingstwoState();
}

class _SettingstwoState extends State<Settingstwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.search_sharp)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              SizedBox(height: 15),
              Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Full name'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Date of Birth'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      passwordChange(context);
                    },
                    child: Text('Change'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Old Password'),

                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
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
