import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Visualsearchfinding extends StatefulWidget {
  const Visualsearchfinding({super.key});

  @override
  State<Visualsearchfinding> createState() => _VisualsearchfindingState();
}

class _VisualsearchfindingState extends State<Visualsearchfinding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(FontAwesomeIcons.search, color: Colors.deepOrange, size: 50),
            SizedBox(height: 25),
            Text(
              'Finding Similar results...',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
