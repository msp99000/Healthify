import 'dart:ui';
import 'package:flutter/material.dart';

class CabbageFour extends StatelessWidget {
  @override
  const CabbageFour({Key key}) : super(key: key);

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
                        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Cabbage-and-Beef-Soup_exps4261_GB143373C01_16_3b_RMS-1.jpg?fit=700,1024'),
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
1/2 teaspoon garlic salt
1/4 teaspoon garlic powder
1/4 teaspoon pepper
2 celery ribs, chopped
1 can (16 ounces) kidney beans, rinsed and drained
1/2 medium head cabbage, chopped
1 can (28 ounces) diced tomatoes, undrained
3-1/2 cups water
4 teaspoons beef bouillon granules
Minced fresh parsley
        
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
1. In a Dutch oven, cook beef over medium heat until no longer pink, breaking it into crumbles; drain. Stir in the remaining ingredients except parsley.
2. Bring to a boil. Reduce heat; cover and simmer for 1 hour. Garnish with parsley.

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
1 cup: 116 calories, 
3g fat (1g saturated fat), 
19mg cholesterol, 582mg sodium, 
11g carbohydrate (3g sugars, 3g fiber), 
11g protein. Diabetic Exchanges: 1 starch, 1 lean meat.

COOKING TIME: 70 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cabbage5');
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

