import 'dart:ui';
import 'package:flutter/material.dart';

class TomatoSix extends StatelessWidget {
  @override
  const TomatoSix({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/tomato');
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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/charred-onion-tomato-salad-59511af.jpg?quality=90&webp=true&resize=300,272'),
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
2 bunches salad onions , trimmed
270g pack mixed small tomatoes , halved
50g bag watercress
For the dressing
1 salad onion , steeped in vinegar
2 tsp white wine vinegar
2 tbsp extra virgin olive oil
½ tsp wholegrain or Dijon mustard
good pinch of golden caster sugar 
        
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
Heat a non-stick frying pan until very hot. Cut the salad onions in half lengthways and cook for about 2½ mins each side, cut-side first, until charred and tender. Transfer to a plate while you prepare the rest of the salad.

STEP 2
Cook the tomatoes, cut-side down, for 30 secs-1 min until just softened and caramelised, then set aside with the onions.

STEP 3
To make the dressing, put all the ingredients into a jar with some seasoning and shake well. When ready to serve, pile the watercress, onions and tomatoes onto a platter. Give the dressing a quick shake, then drizzle it all over the salad.

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
kcal 81
fat 6g
saturates 1g
carbs 4g
sugars 4g
fibre 2g
protein 2g
salt 0.1g

COOKING TIME: 10 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tomato7');
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

