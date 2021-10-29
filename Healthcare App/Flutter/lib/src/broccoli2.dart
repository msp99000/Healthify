import 'dart:ui';
import 'package:flutter/material.dart';

class BroccoliTwo extends StatelessWidget {
  @override
  const BroccoliTwo({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/broccoli');
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
                        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps76528_BB143289C07_22_1b-8.jpg?fit=700,1024'),
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
2-1/2 cups fresh broccoli florets
6 large egg, room temperature
1/4 cup 2% milk
1/2 teaspoon salt
1/4 teaspoon pepper
1/3 cup grated Romano cheese
1/3 cup sliced pitted Greek olives
1 tablespoon olive oil
Shaved Romano cheese and minced fresh parsley
        
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
1. Preheat broiler. In a large saucepan, place steamer basket over 1 in. of water. Place broccoli in basket. Bring water to a boil. Reduce heat to a simmer; steam, covered, until crisp-tender, 4-6 minutes.
2. In a large bowl, whisk eggs, milk, salt and pepper. Stir in cooked broccoli, grated cheese and olives. In a large cast-iron or other ovenproof skillet, heat oil over medium heat; pour in egg mixture. Cook, uncovered, until eggs are nearly set, 4-6 minutes.
3. Broil 3-4 in. from heat until eggs are completely set, 2-4 minutes. Let stand 5 minutes. Cut into wedges. Sprinkle with shaved cheese and parsley.

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
1 wedge (calculated without shaved Romano cheese): 229 calories, 
17g fat (5g saturated fat), 
290mg cholesterol, 
775mg sodium, 
5g carbohydrate (1g sugars, 1g fiber), 
15g protein.

COOKING TIME: 30 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/broccoli3');
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

