import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Cabbage extends StatefulWidget {
  const Cabbage({Key key}) : super(key: key);

  @override
  _CabbageState createState() => _CabbageState();
}

class _CabbageState extends State<Cabbage> {
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
                      'https://www.tasteofhome.com/wp-content/uploads/2018/01/Fried-Cabbage_EXPS_SDFM19_28300_C10_10_4b-15.jpg?fit=700,1024',
                      description:
                      '''When I was young, my family grew our own cabbages. It was fun to put them to use in the kitchen, just as I did with this comforting side. With potatoes, deviled eggs and cornbread, fried cabbage tastes like home.''',
                      name: 'Fried Cabbage',
                      location: '/cabbage2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2018/01/Cabbage-and-Beef-Soup_exps4261_GB143373C01_16_3b_RMS-1.jpg?fit=700,1024",
                      description:
                      '''When I was a little girl, I helped my parents work the fields of their small farm. Lunchtime was always a treat when Mother picked fresh vegetables from the garden and simmered them in her big soup pot. We loved making this delicious recipe.''',
                      name: 'Cabbage and Beef Soup',
                      location: '/cabbage4'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2018/01/Beef-Lentil-Soup_exps2553_GB143373B01_16_1bC_RMS-4.jpg?fit=700,1024",
                      description:
                      '''You can prepare this soup as the main course in a hearty lunch or dinner. On cold winter evenings here in New England, I've often enjoyed sipping a steaming mugful in front of our fireplacel''',
                      name: 'Beef Lentil Soup',
                      location: '/cabbage6'),
                ],
              ),
            )
        )
    );
  }
}

