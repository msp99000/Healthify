import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Broccoli extends StatefulWidget {
  const Broccoli({Key key}) : super(key: key);

  @override
  _BroccoliState createState() => _BroccoliState();
}

class _BroccoliState extends State<Broccoli> {
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
                      'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps76528_BB143289C07_22_1b-8.jpg?fit=700,1024',
                      description:
                      '''My Italian mother-in-law taught me to make this omelet years ago—she would make it for breakfast, lunch or dinner and eat it on Italian bread. ''',
                      name: 'Mediterranean Broccoli & Cheese Omelet',
                      location: '/broccoli2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps46055_BHR143425B05_20_9b-6.jpg?fit=700,1024",
                      description:
                      '''This is one of the best (and most simple) ways I’ve found to serve broccoli. It’s also good with Parmesan if you don’t have the Asiago cheese.''',
                      name: 'Broccoli with Asiago',
                      location: '/broccoli4'),
                ],
              ),
            )
        )
    );
  }
}

