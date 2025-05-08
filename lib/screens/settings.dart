import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Settings'),

              SizedBox(height: 20),

              TextField(
                cursorColor: Colors.pink,
                maxLength: 15,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Full name',
                  filled: true,
                  fillColor: Colors.white12,
                ),
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(height: 15),
              TextField(
                cursorColor: Colors.pink,
                maxLength: 15,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Date of Birth',
                  filled: true,
                  fillColor: Colors.white12,
                ),
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Password'), Text('change')],
              ),
              TextField(
                cursorColor: Colors.pink,
                maxLength: 15,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: '***************',

                  filled: true,
                  fillColor: Colors.white12,
                ),
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(height: 20),
              Text('Notifications'),
              Text("Sales"),
              Text("Sales"),

              Text("Sales"),
            ],
          ),
        ),
      ),
    );
  }
}
