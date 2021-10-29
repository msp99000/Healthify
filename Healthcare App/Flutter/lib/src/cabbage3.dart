import 'dart:ui';
import 'package:flutter/material.dart';

class CabbageThree extends StatelessWidget {
  @override
  const CabbageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Low Calories Meal Plan",
            style: TextStyle(
                fontSize: 24,
                color: Colors.black
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cabbage2');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 36,
              color: Colors.black,
            ),
          ),
        ),
        body: Center(

            child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children:[
                    SizedBox(
                        height: 40
                    ),
                    Text(
                        '''Alternate Ingredient''',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent
                        )
                    ),
                    SizedBox(
                        height:10
                    ),
                    Text(
                      '''
Butter: 7/8 to 1 cup hydrogenated fat and 1/2 tsp. sal
Pepper: Ground white pepper and cayenne pepper

''',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}
