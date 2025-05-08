import 'package:flutter/material.dart';

class ReviewModal extends StatelessWidget {
  const ReviewModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showReviewModal(context),
          child: Text("Open Review Modal"),
        ),
      ),
    );
  }

  void _showReviewModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: const Color.fromARGB(221, 170, 150, 150),
      builder:
          (context) => Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    
                    width: 40,
                    height: 5,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(
                    "What is your rate?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: index < 4 ? Colors.orange : Colors.grey[300],
                        size: 32,
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Please share your opinion about the product",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: "Write your review here...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      _photoPreview(
                        "https://images.pexels.com/photos/13726800/pexels-photo-13726800.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                      ),
                      _photoPreview(
                        "https://images.pexels.com/photos/31737046/pexels-photo-31737046/free-photo-of-woman-in-cozy-scarf-enjoys-scenic-beach-view.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                      ),
                      _addPhotoButton(),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("SEND REVIEW"),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget _photoPreview(String path) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 104,
      height: 100.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: NetworkImage(path), fit: BoxFit.cover),
      ),
    );
  }

  Widget _addPhotoButton() {
    return Container(
      width: 104,
      height: 104,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(Icons.camera_alt, color: Colors.red),
    );
  }
}


