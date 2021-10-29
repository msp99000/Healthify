import 'dart:ui';
import 'package:flutter/material.dart';

class TomatoEight extends StatelessWidget {
  @override
  const TomatoEight({Key key}) : super(key: key);

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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/courgetti-d27e698.jpg?quality=90&webp=true&resize=300,272'),
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
For the salsa
300g pack of room temperature, ripe vine cherry tomatoes , chopped
1 small pack of coriander , leaves and stalks chopped (save stalks for the fritters)
zest and juice of 1 lime (save zest for the fritters)
1 green chilli , finely chopped, deseeded, if you like
1 garlic clove , crushed
2 tbsp extra virgin olive oil

For the fritters
3 courgettes (about 500g), ends trimmed and spiralized into thin noodles
3 spring onions , thinly sliced
1 tsp ground cumin
100g self-raising flour
1 large egg , beaten
2 tbsp olive oil , for frying
        
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
Combine all the salsa ingredients together in a bowl and season with salt and pepper then set aside to let the flavour develop.

STEP 2
In a separate large bowl, mix together the spiralized courgette, spring onions, coriander stalks, lime zest, cumin and flour (you may need to cut some of the longer courgetti in half). Stir in the beaten egg and season with salt and black pepper.

STEP 3
Working in 2 batches, heat half the oil in a non-stick frying pan over a medium heat. Shape the fritters with your hands then then fry for 2–3 mins on each side until golden. Serve warm with the tomato salsa.

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
kcal 168
fat 9g
saturates 1g
carbs 16g
sugars 3g
fibre 3g
protein 5g
salt 0.2g

COOKING TIME: 20 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tomato9');
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

