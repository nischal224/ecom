import 'package:ecom/widgets/appwidgets.dart';
import 'package:flutter/material.dart';

class Visualsearch extends StatefulWidget {
  const Visualsearch({super.key});

  @override
  State<Visualsearch> createState() => _VisualsearchState();
}

class _VisualsearchState extends State<Visualsearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_sharp),
        centerTitle: true,
        title: Text(
          'Visual search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
         
          Positioned.fill(
            child: Image.network(
              'https://images.pexels.com/photos/3094219/pexels-photo-3094219.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(child: Container(color: Colors.black.withAlpha(155))),

          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Search for an outfit by taking a photo or uploading an image",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  buttonForall('TAKE A PHOTO'),
                  SizedBox(height: 15),
                  buttonTransparent('UPLOAD AN IMAGE'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
