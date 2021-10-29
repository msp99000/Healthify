import 'dart:ui';
import 'package:flutter/material.dart';

class CabbageSix extends StatelessWidget {
  @override
  const CabbageSix({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/cabbage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 36,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 250,
                  child: Image(
                    image: NetworkImage(
                        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Beef-Lentil-Soup_exps2553_GB143373B01_16_1bC_RMS-4.jpg?fit=700,1024'),
                  )
              ),
              Text(
                  '''Ingredients''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  )
              ),
              SizedBox(
                  height:7
              ),
              Text(
                '''
1 pound lean ground beef (90% lean)
1 can (46 ounces) tomato or V8 juice
4 cups water
1 cup dried lentils, rinsed
2 cups chopped cabbage
1 cup sliced carrots
1 cup sliced celery
1 cup chopped onion
1/2 cup diced green pepper
1/2 teaspoon pepper
1/2 teaspoon dried thyme
1 bay leaf
1 package (10 ounces) frozen chopped spinach, thawed
        
        ''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                  height:10
              ),
              Text(
                  '''Directions''',
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
1. In a large stockpot, cook beef over medium heat until no longer pink, 5-7 minutes; crumble meat; drain. Add the tomato juice, water, lentils, cabbage, carrots, celery, onion, green pepper, pepper, thyme and bay leaf.
2. Bring to a boil. Reduce heat; simmer, uncovered, for 1 to 1-1/2 hours or until the lentils and vegetables are tender. Add spinach and heat through. Remove bay leaf.

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                  height: 12
              ),
              Text(
                  '''Nutrition Information''',
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
1 cup: 314 calories, 
8g fat (3g saturated fat), 
47mg cholesterol, 661mg sodium, 
37g carbohydrate (10g sugars, 8g fiber), 
27g protein

COOKING TIME: 50 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cabbage7');
                },
                height: 60,
                minWidth: 300,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                color: Colors.deepOrange,
                child: Text(
                  "See Alternate Ingredients",
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        )
    );
  }
}

