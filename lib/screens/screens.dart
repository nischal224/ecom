import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.pexels.com/photos/8638306/pexels-photo-8638306.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Success!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Your order will be elievered soon.\n Thank you for choosing our app",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Continue shopping',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
