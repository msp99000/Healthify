import 'dart:ui';
import 'package:flutter/material.dart';

class AvocadoThree extends StatelessWidget {
  @override
  const AvocadoThree({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/avocado');
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
                  child: Image.asset('Tomato-Avocado-and-Grilled-Corn-Salad_EXPS_THJJ18_153635_C02_01_4b-3.jpg')
              ),
              Text(
                  '''Ingredients''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  )
              ),
              Text(
                '''
> 1 medium ear sweet corn, husks removed
> 3 large red tomatoes, sliced
> 3 large yellow tomatoes, sliced
> 3/4 teaspoon kosher salt, divided
> 1/2 teaspoon pepper, divided
> 2 medium ripe avocados, peeled and sliced
> 1/4 cup olive oil
> 2 tablespoons red wine vinegar
> 1 tablespoon minced fresh basil, plus more for garnish
> 1/3 cup crumbled feta chees 
        
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
              Text(
                '''
1. Grill corn, covered, over medium heat 10-12 minutes or until lightly browned and tender, turning occasionally. Cool slightly. 
2. Cut corn from cob.
Arrange tomato slices on a large serving platter. Sprinkle with 1/2 teaspoon salt and 1/4 teaspoon pepper. Top with avocado slices. Whisk together the oil, vinegar, basil and remaining salt and pepper; drizzle half over the tomatoes and avocado. Top with grilled corn and feta; drizzle remaining dressing over top. Garnish with additional chopped basil. 

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
1 serving: 164 calories, 
13g fat (2g saturated fat), 
3mg cholesterol, 237mg sodium, 
11g carbohydrate (4g sugars, 4g fiber), 
3g protein. 
Diabetic Exchanges: 2 fat, 
1 vegetable, 1
/2 starch. 

COOKING TIME: 30 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/avocado6');
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
