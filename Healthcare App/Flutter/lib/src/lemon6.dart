import 'dart:ui';
import 'package:flutter/material.dart';

class LemonSix extends StatelessWidget {
  @override
  const LemonSix({Key key}) : super(key: key);

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
              Navigator.pushNamed(context, '/lemon');
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
                        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps129221_TH153341D11_18_3b-11.jpg?resize=700,700'),
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
2-1/2 teaspoons salt, divided
1/2 pound fresh asparagus, trimmed and cut into 1-1/2-inch pieces
4 cups uncooked bow tie pasta (about 12 ounces)
3 tablespoons olive oil, divided
1 can (14 ounces) water-packed quartered artichoke hearts, well drained
2 garlic cloves, minced
1 cup crumbled goat cheese
2 tablespoons minced fresh parsley
1 tablespoon grated lemon zest
2 to 3 tablespoons lemon juice
1/3 cup grated Parmesan cheese
        
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
1. Fill a 6-qt. stockpot three-fourths full with water; add 2 teaspoons salt and bring to a boil. Add asparagus; cook, uncovered, 1-2 minutes or just until crisp-tender. Remove asparagus and immediately drop into ice water. Drain and pat dry.
2. In same pot of water, cook pasta according to package directions for al dente. Drain, reserving 1 cup pasta water. Return pasta to pot.
3. Meanwhile, in a large skillet, heat 1 tablespoon oil over medium-high heat. Add artichoke hearts; cook and stir 3-4 minutes or until lightly browned. Add garlic; cook 1 minute longer. Add to pasta.
4. Add asparagus, goat cheese, parsley, lemon peel, lemon juice and the remaining salt and oil; toss to combine, adding enough reserved pasta water to coat. Heat through. Serve with Parmesan cheese.

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
1-1/4 cups: 343 calories, 
14g fat (5g saturated fat), 
27mg cholesterol, 919mg sodium, 
43g carbohydrate (2g sugars, 3g fiber), 
14g protein.

COOKING TIME: 20 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/lemon7');
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

