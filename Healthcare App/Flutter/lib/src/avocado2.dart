import 'dart:ui';
import 'package:flutter/material.dart';

class AvocadoTwo extends StatelessWidget {
  @override
  const AvocadoTwo({Key key}) : super(key: key);

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
            Navigator.pushNamed(context, '/avocado');
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
                  image: NetworkImage('https://www.tasteofhome.com/wp-content/uploads/2018/05/Tomato-Avocado-and-Grilled-Corn-Salad_EXPS_THJJ18_153635_C02_01_4b-3.jpg?fit=700,1024'),
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
1 1/2 tablespoons butter
1 minced shallot 
8 ounces sliced baby portobello mushrooms
1 cup cherry or grape tomatoes
2 cups chopped kale, stems removed
salt to taste
2 avocados
8 pieces thick, sturdy wheat bread 
        
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
1. Heat the butter in a large skillet over medium high heat. Add the shallots; saute until translucent. Add the mushrooms and saute until browned lightly on the outside. Add the tomatoes and kale; saute until wilted and warmed through. Remove from heat and season with salt.
2. Mash the avocado in a bowl with a fork. Spread some avocado on the surface of each piece of bread. Assemble the sandwiches by carefully arranging the vegetables on the bread. Get as many veggies on as you can because the sandwiches sink down when you use the panini press.
3. Add the cheese on top of the veggies if you want, cover with another slice of bread, and place on a preheated panini press. When the bread is browned on the outside, remove from heat. If you did not cut the tomatoes, be careful as they might burst when you bite into them and they will be hot! 

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
Total Fat: 18.8g
Cholesterol: 1.1mg
Sodium: 444.9mg
Total Carbohydrate: 63.5g
Dietary Fiber: 15.1g
Sugars: 8.4g
Protein: 4.1g
Vitamin A: 64.2µg
Vitamin C: 26.1mg
Potassium: 706.4mg
Phosphorus: 108.8mg 

COOKING TIME: 35 Min

''',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/avocado5');
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

