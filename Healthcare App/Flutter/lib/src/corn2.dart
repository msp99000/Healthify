import 'dart:ui';
import 'package:flutter/material.dart';

class CornTwo extends StatelessWidget {
  @override
  const CornTwo({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/corn');
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
                        'https://www.tasteofhome.com/wp-content/uploads/2020/09/Black-Bean-and-Corn-Guacamole_EXPS_TMBSTK18_255118_guacamole_C10_29_5b-8.jpg?fit=700,1024'),
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
6 medium ears sweet corn
1/2 cup sour cream
1/4 cup grated Parmesan cheese
1 tablespoon lime juice
1/2 teaspoon chili powder
1/4 teaspoon salt
1/8 teaspoon pepper
        
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
1. Carefully peel back corn husks to within 1 in. of bottoms; remove silk. Rewrap corn in husks; secure with kitchen string. Rinse corn under water, moistening husks. Grill corn, covered, over medium heat 20-25 minutes or until tender, turning often.
2. In a small bowl, mix remaining ingredients until blended. Cut string from corn and peel back husks. Spread corn with sour cream mixture.

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

1 ear of corn with about 1 tablespoon sour cream mixture: 143 calories, 
6g fat (3g saturated fat), 
16mg cholesterol, 180mg sodium, 
20g carbohydrate (7g sugars, 2g fiber), 
5g protein. Diabetic Exchanges: 1 starch, 1 fat.

COOKING TIME: 35 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/corn3');
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

