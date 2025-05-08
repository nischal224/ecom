import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchbytakingaphoto extends StatefulWidget {
  const Searchbytakingaphoto({super.key});

  @override
  State<Searchbytakingaphoto> createState() => _SearchbytakingaphotoState();
}

class _SearchbytakingaphotoState extends State<Searchbytakingaphoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 106,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.boltLightning),
            SizedBox(width: 25),
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: Color.fromRGBO(235, 22, 7, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(FontAwesomeIcons.camera, color: Colors.white),
            ),
            SizedBox(width: 25),

            Icon(FontAwesomeIcons.arrowsRotate),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Search by taking a photo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.pexels.com/photos/3775156/pexels-photo-3775156.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
        ],
      ),
    );
  }
}
