import 'package:flutter/material.dart';

class Mainpagetwo extends StatefulWidget {
  const Mainpagetwo({super.key});

  @override
  State<Mainpagetwo> createState() => _MainpagetwoState();
}

class _MainpagetwoState extends State<Mainpagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/27269898/pexels-photo-27269898/free-photo-of-clothes-hanging-on-clotheslines-in-a-narrow-alley.jpeg?auto=compress&cs=tinysrgb&w=600',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                Positioned.fill(
                  child: Container(color: Colors.black.withAlpha(100)),
                ),
                Positioned(child: Container(color: Colors.black)),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    'Street clothes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sale",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("View all")],
                  ),
                  Text(
                    "Super summer sale",
                    style: TextStyle(color: Color.fromRGBO(155, 155, 155, 100)),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(imageData.length, (index) {
                        final item = imageData[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Stack(
                            children: [
                              Image.network(
                                item['url']!,
                                fit: BoxFit.cover,
                                height: 260,
                                width: 150,
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color:
                                        item['label'] == '-20%'
                                            ? Colors.red
                                            : Colors.grey,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    item['label']!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List imageData = [
    {
      'url':
          'https://images.pexels.com/photos/7142987/pexels-photo-7142987.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-20%',
    },
    {
      'url':
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-15%',
    },
    {
      'url':
          'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-20%',
    },
    {
      'url':
          'https://images.pexels.com/photos/3184194/pexels-photo-3184194.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-20%',
    },
    {
      'url':
          'https://images.pexels.com/photos/3771664/pexels-photo-3771664.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-10%',
    },
  ];
}
