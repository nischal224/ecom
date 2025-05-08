import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  String _selectedOption = 'None';

  _showOptionsBottomSheet(BuildContext context) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Option 1'),
              onTap: () => Navigator.pop(context, 'Option 1'),
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () => Navigator.pop(context, 'Option 2'),
            ),
            ListTile(
              title: Text('Option 3'),
              onTap: () => Navigator.pop(context, 'Option 3'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        _selectedOption = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected: $_selectedOption'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showOptionsBottomSheet(context),
              child: Text('Choose Option'),
            ),
          ],
        ),
      ),
    );
  }
}
