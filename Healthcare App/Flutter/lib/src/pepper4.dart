import 'dart:ui';
import 'package:flutter/material.dart';

class PepperFour extends StatelessWidget {
  @override
  const PepperFour({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/pepper');
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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-257588_11-226a3b6.jpg?quality=90&webp=true&resize=300,272'),
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
2 Spanish onions , finely sliced
3 fat garlic cloves , finely sliced
4 peppers , sliced - red or yellow will look best
4 tbsp olive oil , plus a little more for drizzling if you want
2 handfuls pitted green or black olives , quartered
2 tbsp capers , rinsed and drained
145g pack pizza base mix
6 anchovies , each cut into 4 long strips (optional, remove to make it veggie)
        
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
Heat oven to 200C/180C fan/gas 6. Tip the onions, garlic, peppers and olive oil into a roasting tin and cook for 40-45 mins, stirring occasionally, until the onions and peppers are soft and tinged brown. Stir in the olives and capers, and season well.

STEP 2
While the onions are cooking, make up the pizza dough following pack instructions. Roll and press the dough out to fit a baking tray, about 40 x 30cm. Leave to rise in the tray for 10 mins, then spoon over the topping mix. Press gently into the dough and leave for another 10 mins. Scatter over the anchovies, if using.

STEP 3
Bake for 25-30 mins or until the dough has risen and cooked through. Drizzle with more olive oil to serve if you like.

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
kcal 306
fat 15g
saturates 2g
carbs 38g
sugars 15g
fibre 6g
protein 7g
salt 2.3g

COOKING TIME: 1 Hr 15 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pepper5');
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

