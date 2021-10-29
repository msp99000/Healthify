import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Corn extends StatefulWidget {
  const Corn({Key key}) : super(key: key);

  @override
  _CornState createState() => _CornState();
}

class _CornState extends State<Corn> {
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
                      'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps185760_TH153341C11_13_12b-1.jpg?fit=700,1024',
                      description:
                      '''Mexican food is my grandmother’s favorite. I wanted a perfect side for her legendary tacos, and this chile-lime grilled corn turned out to be just right.''',
                      name: 'Grilled Street Corn',
                      location: '/corn2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2020/09/Black-Bean-and-Corn-Guacamole_EXPS_TMBSTK18_255118_guacamole_C10_29_5b-8.jpg?fit=700,1024",
                      description:
                      '''Head to any Mexican restaurant and we guarantee you’ll see this combo on the menu. The bright colors and contrasting textures make black beans and corn fun additions to guacamole. For extra flavor, grill the corn first''',
                      name: 'Black Bean and Corn Guacamole',
                      location: '/corn4'),
                ],
              ),
            )
        )
    );
  }
}

