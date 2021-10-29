import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({Key key}) : super(key: key);

  @override
  _MealPlanState createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // color:Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                          child: Icon(Icons.arrow_back_ios, size: 36),
                          onTap: () {
                            Navigator.pop(context);
                          })),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Icon(
                          Icons.restaurant_menu,
                          size: 40,
                          color: Colors.black,
                        ),
                        SizedBox(width: 20),
                        Text('Low Calories Meal Plan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Rcard(
                      imageUrl:
                          'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/842318664/veggie-panini.jpg',
                      description:
                          '''Meat-free panini? Not only possible, they're delicious. You won't even miss the meat thanks to a healthy dose of indulgent avocado.''',
                      name: 'Avocado Veggie Panini',
                      location: '/avocado2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                          "https://www.tasteofhome.com/wp-content/uploads/2018/05/Tomato-Avocado-and-Grilled-Corn-Salad_EXPS_THJJ18_153635_C02_01_4b-3.jpg?fit=700,1024",
                      description:
                          '''With ripe tomatoes, fresh basil and grilled corn, this bright salad tastes just like summertime! &mdash;Angela Spengler, Tampa, Florida''',
                      name: 'Avocado & Grilled Corn Salad',
                      location: '/avocado2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                          "https://www.runningtothekitchen.com/wp-content/uploads/2013/07/Zucchini-pasta.jpg.webp",
                      description:
                          '''Zucchini noodles with avocado cream sauce makes a perfect side dish or light meal for summer. Add some grilled shrimp or chicken for a heartier meal''',
                      name: 'Zucchini Noodles With Avocado Cream Sauce',
                      location: '/avocado2'),
                  SizedBox(height: 20)
                ],
              ),
            )
        )
    );
  }
}


class Ingredients extends StatelessWidget {
  @override
  const Ingredients({Key key}) : super(key: key);

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
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/salsa-e946d21.jpg?quality=90&webp=true&resize=300,272'),
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
4-6 medium tomatoes, peeled and finely chopped
½ red onion, very finely chopped
1 small garlic clove, chopped
small splash of white wine vinegar
½ lime, juiced
½ bunch of coriander, roughly chopped 
        
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
Combine the tomatoes, red onion, garlic, white wine vinegar, lime juice and coriander in a bowl. Stir, then refrigerate until ready to serve.

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

COOKING TIME: 5 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tomato3');
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
