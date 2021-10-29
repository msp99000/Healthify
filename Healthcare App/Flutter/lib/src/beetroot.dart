import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Beetroot extends StatefulWidget {
  const Beetroot({Key key}) : super(key: key);

  @override
  _BeetrootState createState() => _BeetrootState();
}

class _BeetrootState extends State<Beetroot> {
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
                      'https://www.thebbqbastard.com/wp-content/uploads/2019/10/Rode-bieten-salade-.jpg',
                      description:
                      '''The taste of winter is a blessing! With the earthy tones of the beetroot balanced with the citrus and mint, this beetroot salad will do great with a piece of wildgame!''',
                      name: 'Citrus flavored Beetroot Salad',
                      location: '/beetroot2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://i1.wp.com/happyhealthymama.com/wp-content/uploads/2015/09/P9229621.jpg?resize=1024%2C768&ssl=1",
                      description:
                      '''If you’re wondering how to cook beets to make them taste like vegetable candy, you need to know that roasted beets are the BEST.''',
                      name: 'Coconut Oil Roasted Beets',
                      location: '/beetroot4'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://delightfulmomfood.com/wp-content/uploads/2020/09/Beet-fries-400x400.jpg",
                      description:
                      '''Tender on the inside, these savory roasted beet fries are a sensational way to enjoy all the healthy benefits of beets in a fun way!''',
                      name: 'Beet Fries Recipe',
                      location: '/beetroot6'),
                ],
              ),
            )
        )
    );
  }
}

