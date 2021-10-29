import 'dart:ui';
import 'package:flutter/material.dart';

class CornFour extends StatelessWidget {
  @override
  const CornFour({Key key}) : super(key: key);

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
3 medium ripe avocado, peeled and cubed
2 to 3 tablespoons fresh lime juice
1/2 to 1 teaspoon kosher salt
1/2 cup black beans, rinsed and drained
1/2 cup uncooked fresh whole kernel corn
1/4 teaspoon coarsely ground pepper
        
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
In a bowl, mash avocados until almost smooth. Stir in lime juice and ½ teaspoon salt. Let stand 10 minutes to allow flavors to blend. Adjust seasoning with additional lime juice and salt if desired. Top with black beans and corn

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
1/4 cup: 144 calories, 
11g fat (1g saturated fat), 
0 cholesterol, 206mg sodium, 
12g carbohydrate (1g sugars, 6g fiber), 
3g protein. 
Diabetic Exchanges: 2 fat, 1 starch.

COOKING TIME: 15 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/corn5');
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

