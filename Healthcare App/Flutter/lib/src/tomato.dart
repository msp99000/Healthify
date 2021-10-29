import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Tomato extends StatefulWidget {
  const Tomato({Key key}) : super(key: key);

  @override
  _TomatoState createState() => _TomatoState();
}

class _TomatoState extends State<Tomato> {
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
                      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/salsa-e946d21.jpg?quality=90&webp=true&resize=300,272',
                      description:
                      '''Make this tasty salsa in just 5 minutes with tomatoes, onion, garlic, lime, coriander and white wine vinegar''',
                      name: 'Ultimate Tomato Salsa',
                      location: '/tomato2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/meatball-tomato-soup-afa0bd0.jpg?quality=90&webp=true&resize=300,272",
                      description:
                      '''Get three of your 5-a-day in one serving with this healthy, low-calorie tomato soup. The addition of meatballs and giant couscous means it's filling, too''',
                      name: 'Meatball & Tomato Soup',
                      location: '/tomato4'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/charred-onion-tomato-salad-59511af.jpg?quality=90&webp=true&resize=300,272",
                      description:
                      '''A perfect side salad to serve alongside fish dishes or a steak, this onion and tomato salad uses chunky salad onions which won’t wilt once cooked''',
                      name: 'Charred onion & Tomato Salad',
                      location: '/tomato6'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/courgetti-d27e698.jpg?quality=90&webp=true&resize=300,272",
                      description:
                      '''Make snacking exciting and swap your chips and dips for these cumin-spiced fritters with zingy tomato salsa. They're easy to make and are great for sharing''',
                      name: 'Courgetti Fritters With Tomato Salsa',
                      location: '/tomato8')
                ],
              ),
            )
        )
    );
  }
}

