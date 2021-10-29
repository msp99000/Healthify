import 'dart:ui';
import 'package:flutter/material.dart';

class SpinachFour extends StatelessWidget {
  @override
  const SpinachFour({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/spinach');
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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-735467_11-1c5511b.jpg?quality=90&webp=true&resize=300,272'),
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
1 tbsp olive oil
1 garlic clove , crushed
250g pack mushrooms , sliced
1 tsp thyme leaves , chopped
200g bag spinach
300g tub light soft cheese
4 tbsp grated parmesan (or vegetarian alternative)
6 fresh lasagne sheets
        
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
STEP 1
Heat oven to 200C/180C fan/gas 6. Heat the oil in a large frying pan, add the garlic and cook for 1 min. Add the mushrooms and thyme, then cook for 3 mins until they start to soften. Throw in the spinach and stir until the heat of the pan wilts the leaves. Remove from the heat and stir in the soft cheese, 1 tbsp of the Parmesan and some seasoning.

STEP 2
Put a quarter of the spinach mix on the bottom of a medium-sized baking dish, lay 2 pasta sheets on top, then repeat until you have used all the pasta. Finish with the final quarter of the spinach mix, sprinkle over the rest of the Parmesan, then bake for 35 mins until golden and the pasta is tender.

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
kcal 301
fat 16g
saturates 8g
carbs 25g
sugars 4g
fibre 3g
protein 16g
low in salt 1.15g

COOKING TIME: 45 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/spinach5');
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

