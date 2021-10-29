import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Carrot extends StatefulWidget {
  const Carrot({Key key}) : super(key: key);

  @override
  _CarrotState createState() => _CarrotState();
}

class _CarrotState extends State<Carrot> {
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
                      'https://www.eatthis.com/wp-content/uploads/sites/4/2019/01/vegetarian-honey-roasted-carrots.jpg?quality=82&strip=1&resize=600%2C338',
                      description:
                      '''Trust us, you're going to want to eat your vegetables this way all the time.''',
                      name: 'Honey Roasted Carrots',
                      location: '/carrot2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.acouplecooks.com/wp-content/uploads/2020/04/Sauteed-Carrots-001-735x919.jpg",
                      description:
                      '''Here are the best sauteed carrots you’ll ever have! The perfect easy side dish, they’re made with just 3 ingredients and done in 10 minutes''',
                      name: 'Perfect Sauteed Carrots',
                      location: '/carrot4'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.acouplecooks.com/wp-content/uploads/2020/06/Carrot-Salad-012-768x960.jpg",
                      description:
                      '''This carrot salad is fresh and healthy, with a tangy vinaigrette dressing! It’s easy to make, ideal for cookouts, potlucks, as a side dish, or for lunch.''',
                      name: 'Simple Carrot Salad',
                      location: '/carrot6'),
                ],
              ),
            )
        )
    );
  }
}

