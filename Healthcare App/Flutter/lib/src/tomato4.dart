import 'dart:ui';
import 'package:flutter/material.dart';

class TomatoFour extends StatelessWidget {
  @override
  const TomatoFour({Key key}) : super(key: key);

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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/meatball-tomato-soup-afa0bd0.jpg?quality=90&webp=true&resize=300,272'),
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
1½ tbsp rapeseed oil
1 onion, finely chopped
2 red peppers, deseeded and sliced
1 garlic clove, crushed
½ tsp chilli flakes
2 x 400g cans chopped tomatoes
100g giant couscous
500ml hot vegetable stock
12 pork meatballs
150g baby spinach
½ small bunch of basil
grated parmesan, to serve (optional) 
        
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
Heat the oil in a saucepan. Fry the onion and peppers for 7 mins, then stir through the garlic and chilli flakes and cook for 1 min. Add the tomatoes, giant couscous and veg stock and bring to a simmer.

STEP 2
Season to taste, then add the meatballs and spinach. Simmer for 5-7 mins or until cooked through. Ladle into bowls and top with the basil and some parmesan, if you like.
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
low in kcal 330
low in fat 12g
saturates 3g
carbs 36g
sugars 14g
fibre 6g
protein 17g
salt 0.7g 

COOKING TIME: 15 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tomato5');
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

