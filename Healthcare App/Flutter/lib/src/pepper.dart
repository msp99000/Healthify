import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Pepper extends StatefulWidget {
  const Pepper({Key key}) : super(key: key);

  @override
  _PepperState createState() => _PepperState();
}

class _PepperState extends State<Pepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // color:Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                          child: Icon(Icons.arrow_back_ios, size: 36),
                          onTap: () {
                            Navigator.pop(context);
                          })),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Icon(
                          Icons.restaurant_menu,
                          size: 40,
                          color: Colors.black,
                        ),
                        SizedBox(width: 20),
                        Text('Low Calories Meal Plan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Rcard(
                      imageUrl:
                      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1259639_8-50cfcd8.jpg?quality=90&webp=true&resize=300,272',
                      description:
                      '''This vibrant dish has all the flavours of the Mediterranean for holiday dining at home''',
                      name: 'Roasted Peppers With Tomatoes & Anchovies',
                      location: '/pepper2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-257588_11-226a3b6.jpg?quality=90&webp=true&resize=300,272",
                      description:
                      '''This vibrant dish makes a simple yet delicious supper which is perfect for sharing''',
                      name: 'Pepper pissaladière',
                      location: '/pepper4'),
                ],
              ),
            )
        )
    );
  }
}

