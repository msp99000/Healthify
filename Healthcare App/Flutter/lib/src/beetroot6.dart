import 'dart:ui';
import 'package:flutter/material.dart';

class BeetrootSix extends StatelessWidget {
  @override
  const BeetrootSix({Key key}) : super(key: key);

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
                        'https://delightfulmomfood.com/wp-content/uploads/2020/09/Beet-fries-400x400.jpg'),
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
2 large red or golden beets
1 Tablespoon olive oil
1 teaspoon harissa spice
¼ teaspoon cumin
salt and pepper
parsley chopped (optional)
2 tablespoons Parmesan grated 
        
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
1. Preheat oven 400 degrees F. Line a baking pan with parchment paper.
2. Peel red or golden beets. Then slice off both ends. Slice them up into ¼ inch long slices to resemble fries.
3. Lay the beet slices on prepared baking pan. Drizzle olive oil over them and coat with your hands. Then sprinkle harissa spice, cumin and a dash of salt and pepper.
4. Roast them at 400 degrees F for 15-25 minutes, flipping them through the process after 10 minutes. To see if they are done, poke them with a fork, they should be nice and soft.
5. Remove the pan from the oven and sprinkle some Parmesan cheese on top and serve right away with your favorite sauce or dip.

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
Calories: 60kcal  
Carbohydrates: 4g  
Protein: 2g  
Fat: 4g  
Saturated Fat: 1g  
Cholesterol: 2mg  
Sodium: 89mg  
Potassium: 133mg  
Fiber: 1g  
Sugar: 3g  
Vitamin A: 33IU  
Vitamin C: 2mg  
Calcium: 36mg  
Iron: 1mg

COOKING TIME: 10 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/beetroot5');
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

