import 'dart:ui';
import 'package:flutter/material.dart';

class BeetrootTwo extends StatelessWidget {
  @override
  const BeetrootTwo({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/beetroot');
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
                        'https://www.thebbqbastard.com/wp-content/uploads/2019/10/Rode-bieten-salade-.jpg'),
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
500 gr. beetroot
1/2 red onion
zeste from 1 orange and half of it’s juice
1 lime zeste and juice
1 handful of mint
1 pinch of cinnamon
salt and pepper at taste
1 Tbsp Honey
1 sour apple
1 handful mixed nuts
feta at taste 
        
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
1. Dice the beetroot in small cubes and slice the red onion in thin strips.
2. Mix the honey with the lime and orange juice, salt and pepper at taste, a pinch of cinnamon and half of the thinly chopped fresh mint.
3. Stir the beetroot under the marinade and put aside for at least 4 hours.
4. Bake the mixed nuts in a hot pan.
5. Slice the sour apple in julienne and mix under the beetroot salad right before serving.
6. Stir in the mixed nuts, zest of one lime and half of the orange. Toss in the crumbled Feta cheese.

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
kcal 29
low in fat 0.2g
saturates 0g
carbs 5g
sugars 5g
fibre 2g
protein 1g
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
                  Navigator.pushNamed(context, '/beetroot3');
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

