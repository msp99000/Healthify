import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';

class Lemon extends StatefulWidget {
  const Lemon({Key key}) : super(key: key);

  @override
  _LemonState createState() => _LemonState();
}

class _LemonState extends State<Lemon> {
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
                                fontSize: 25,
                                color: Colors.black)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Rcard(
                      imageUrl:
                      'https://www.tasteofhome.com/wp-content/uploads/2018/01/Lemon-Apricot-Fruit-Pops_EXPS_THJJ19_45186_B02_21_9b-12.jpg?fit=700,1024',
                      description:
                      '''With just 31 calories and less than 1 tsp. sugar per serving, these lemon ice pops are one light and refreshing summer dessert everyone can find room for!''',
                      name: 'Lemon-Apricot Fruit Pops',
                      location: '/lemon2'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps194425_SD163617D02_04_4b-4.jpg?fit=700,1024",
                      description:
                      '''Fresh zucchini gets a shave and a drizzle of lemony goodness in this fab salad. Sprinkle the goat cheese or feta on top and dive in''',
                      name: 'Lemony Zucchini Ribbons',
                      location: '/lemon4'),
                  SizedBox(height: 20),
                  Rcard(
                      imageUrl:
                      "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps129221_TH153341D11_18_3b-11.jpg?resize=700,700",
                      description:
                      '''While sailing in the Mediterranean, we tasted a lemony artichoke pasta. I developed my own version of it that our guests love. Try it with shrimp and kalamata olives.''',
                      name: 'Artichoke & Lemon Pasta',
                      location: '/lemon6'),
                  SizedBox(height: 20)
                ],
              ),
            )
        )
    );
  }
}

