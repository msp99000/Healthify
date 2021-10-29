import 'dart:ui';
import 'package:flutter/material.dart';

class CarrotSix extends StatelessWidget {
  @override
  const CarrotSix({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/carrot');
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
                        'https://www.acouplecooks.com/wp-content/uploads/2020/06/Carrot-Salad-012-768x960.jpg'),
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
1 tablespoon white wine vinegar
½ tablespoon Dijon mustard
1 teaspoon sugar or maple syrup
½ teaspoon kosher salt
3 tablespoons olive oil
1 pound carrots, julienned (3 cups)
2 green onions
3 tablespoons chopped parsley
        
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
1. In a medium bowl, whisk together the white wine vinegar, Dijon mustard, sugar or maple syrup, and kosher salt. Gradually mix in the olive oil.
2. Julienne the carrots using a julienne peeler, with the grating blade on a food processor, or using the large grate holes of a box grater (this will do but the pieces aren’t as pretty).
3. Thinly slice the green onions. Finely chop the parsley.
4. Add all the vegetables to the bowl with the dressing and stir to combine. Serve immediately or refrigerate for up to 3 days.

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

14% Total Fat 11.1g
Saturated Fat 1.6g
5% Total Carbohydrate 12.5g
12% Dietary Fiber 3.4g
Sugars 6.6g
3% Protein 1.4g
10 7% Vitamin A 964.7µg
12% Vitamin C 10.9mg
3% Calcium 45.3mg
3% Iron 0.6mg
0% Vitamin D 0µg
4% Magnesium 18.4mg
8% Potassium 390.3mg
10% Vitamin B6 0.2mg
0% Vitamin B12 0µg

COOKING TIME: 21 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/carrot7');
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

