import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Spinach extends StatefulWidget {
  const Spinach({Key key}) : super(key: key);

  @override
  _SpinachState createState() => _SpinachState();
}

class _SpinachState extends State<Spinach> {
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
                      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/spinach-halloumi-salad-4a2832a.jpg?quality=90&webp=true&resize=300,272',
                      description:
                      '''Try this tasty spinach and halloumi salad as a light main or starter. It contains just four ingredients so is super simple to make, and it's super speedy too''',
                      name: 'Spinach & Halloumi Salad',
                      location: '/spinach2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-735467_11-1c5511b.jpg?quality=90&webp=true&resize=300,272",
                      description:
                      '''An easy vegetarian supper that's cheap to make too''',
                      name: 'Quick Mushroom & Spinach Lasagne',
                      location: '/spinach4'),
                ],
              ),
            )
        )
    );
  }
}

