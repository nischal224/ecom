import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

TextStyle boldText() {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: 34);
}

TextStyle formTitleColor() {
  return TextStyle(color: Color.fromRGBO(155, 155, 155, 100), fontSize: 15);
}

Container buttonForall(String name) {
  return Container(
    alignment: Alignment.center,
    height: 48,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color.fromRGBO(219, 34, 17, 1),
      borderRadius: BorderRadius.circular(25),
    ),

    child: Text(name, style: TextStyle(color: Colors.white)),
  );
}

Container buttonTransparent(String name) {
  return Container(
    alignment: Alignment.center,
    height: 48,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white, width: 2),
      borderRadius: BorderRadius.circular(25),
    ),

    child: Text(name, style: TextStyle(color: Colors.white)),
  );
}

Widget facebookAndGoogle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 64,
        width: 92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Icon(FontAwesomeIcons.google),
      ),
      SizedBox(width: 25),
      Container(
        height: 64,
        width: 92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Icon(FontAwesomeIcons.squareFacebook),
      ),
    ],
  );
}

Widget textFormFieldLogin() {
  return Column(
    children: [
      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Name', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: 'Enter name',
          ),
        ),
      ),
      SizedBox(height: 20),
      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Email', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: 'Enter Email',
          ),
        ),
      ),
      SizedBox(height: 20),

      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Password', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget emailPassword() {
  return Column(
    children: [
      SizedBox(height: 20),
      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Email', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: 'Enter Email',
          ),
        ),
      ),
      SizedBox(height: 20),

      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Password', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget emailOnly() {
  return Column(
    children: [
      SizedBox(height: 20),
      Material(
        elevation: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(25),
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 100),
            label: Text('Email', style: formTitleColor()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: 'Enter Email',
          ),
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}

Widget haveAccount(String name) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(width: 5),
      Icon(Icons.arrow_forward_rounded, color: Colors.deepOrange),
    ],
  );
}

Widget atm() {
  return Container(
    color: Colors.black,
    child: Stack(
      children: [
        Positioned(
          bottom: -100,
          child: Opacity(
            opacity: 0.7,
            child: Image.asset('assets/peaak.png', fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 20,
            left: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(FontAwesomeIcons.microchip, color: Colors.orange, size: 30),
              SizedBox(height: 25),
              Text(
                '**** **** **** 3947',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Holder Name",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "Jennyfer Doe",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry Date",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "05/23",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://imgs.search.brave.com/mKvLaABPiZEx8NHddF6el099TG6hZdPYXOkYdFk3ako/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvbWFz/dGVyY2FyZC1sb2dv/LWJsYWNrLWJhY2tn/cm91bmQtNnVkNzN4/bGc5MzZ3b2N0Ni5q/cGc',
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void atmsnack(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,

    builder:
        (context) => Container(
          width: double.infinity,

          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 6,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Add new card",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Material(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text('Name on card'),
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
                        label: Text('Card number'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        suffixIcon: Icon(
                          FontAwesomeIcons.ccMastercard,
                          color: Colors.red,
                          size: 35,
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
                        label: Text('Expire Date'),
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
                        label: Text('CVV'),
                        suffixIcon: Icon(FontAwesomeIcons.question),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                buttonForall('ADD CARD'),
              ],
            ),
          ),
        ),
  );
}

void passwordChange(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 8,
                  width: 63,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Password Change",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 15),
                Material(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: '*****************',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('Forgot Password')],
                ),
                SizedBox(height: 15),
                Material(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text('New Password'),

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
                        label: Text('Repeat New Password'),

                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                buttonForall('SAVE PASSWORD'),
              ],
            ),
          ),
        ),
      );
    },
  );
}
