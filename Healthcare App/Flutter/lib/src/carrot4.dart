import 'dart:ui';
import 'package:flutter/material.dart';

class CarrotFour extends StatelessWidget {
  @override
  const CarrotFour({Key key}) : super(key: key);

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
                        'https://www.acouplecooks.com/wp-content/uploads/2020/04/Sauteed-Carrots-001-735x919.jpg'),
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
8 medium carrots (1 pound)
2 tablespoons olive oil
¼ teaspoon plus 1 pinch kosher salt
1 tablespoon chopped fresh thyme (or other fresh herbs — we used a combination of thyme and chives)
        
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
1. Peel the carrots and slice them diagonally into rounds (on the bias).
2. Heat the olive oil in a large skillet over medium high heat. Add the carrots and cover. Cook for 4 minutes without stirring.
3. Remove the lid, stir, and add the ¼ teaspoon kosher salt. Continue to saute uncovered 3 to 4 minutes until browned, stirring occasionally. Remove from the heat and stir in the fresh herbs and a few more pinches kosher salt to taste. Serve immediately.

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
Total Fat 7.3g
Saturated Fat 1g
4% Total Carbohydrate 10.9g
11% Dietary Fiber 3.2g
Sugars 5.4g
2% Protein 1.1g
10 5% Vitamin A 946.9µg
7% Vitamin C 6.7mg
3% Calcium 37.4mg
2% Iron 0.3mg
0% Vitamin D 0µg
3% Magnesium 13.6mg
8% Potassium 362.9mg
9% Vitamin B6 0.2mg
0% Vitamin B12 0µg

COOKING TIME: 7 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/carrot5');
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

