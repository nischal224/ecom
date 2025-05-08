import 'package:flutter/material.dart';

class Selectsize extends StatefulWidget {
  const Selectsize({super.key});

  @override
  State<Selectsize> createState() => _SelectsizeState();
}

class _SelectsizeState extends State<Selectsize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        title: Text('Short dress'),
        actions: [Icon(Icons.share)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 138,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Size'),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 138,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Size'),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),
                      Material(
                        elevation: 8.0,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.heart_broken),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'H & M',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$19.99",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text('Short black dress'),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 188, 5, 100),
                      );
                    }),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Short dress in soft cotton jersey with decorative buttons down the front and a wide,frill-trimmed",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Material(
              elevation: 8.0,
              child: Container(
                height: 112,
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromRGBO(233, 28, 9, 1),
                      ),
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 5,
                      width: 100,

                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping info'),

                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                );
              }),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You can also like this",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('12 items'),
                ],
              ),
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
                                      : Colors.black,
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
      'label': 'NEW',
    },
    {
      'url':
          'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': 'NEW',
    },
    {
      'url':
          'https://images.pexels.com/photos/3184194/pexels-photo-3184194.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': 'NEW',
    },
    {
      'url':
          'https://images.pexels.com/photos/3771664/pexels-photo-3771664.jpeg?auto=compress&cs=tinysrgb&w=600',
      'label': '-20%',
    },
  ];
}
