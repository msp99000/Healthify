import 'dart:ui';
import 'package:flutter/material.dart';

class TomatoThree extends StatelessWidget {
  @override
  const TomatoThree({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/tomato2');
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
1 1/2 tablespoons olive oil
1 minced onion
8 ounces sliced baby portobello mushrooms
1 cup cherry or grape tomatoes
2 cups chopped kale, stems removed
salt to taste
2 avocados
8 pieces thick, sturdy wheat bread 

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
