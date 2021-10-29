import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/card.dart';
import 'package:flutter/cupertino.dart';


class Avocado extends StatefulWidget {
  const Avocado({Key key}) : super(key: key);

  @override
  _AvocadoState createState() => _AvocadoState();
}

class _AvocadoState extends State<Avocado> {
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
                                color: Colors.black)
                        ),
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

