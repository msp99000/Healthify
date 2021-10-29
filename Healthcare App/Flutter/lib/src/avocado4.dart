import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

class AvocadoFour extends StatelessWidget {
  @override
  const AvocadoFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: _sideDrawer(context),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(children: <Widget> [
            _recipeCardOne(context),
            SizedBox(
              height: 20,
            ),
            _recipeCardTwo(context),
          SizedBox(
            height: 20,
          ),
          _recipeCardThree(context),
          SizedBox(
            height: 20,
          ),
          _recipeCardFour(context)
          ],
        )
      ),
    );
  }
}


  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/avocado3');
        },
        icon: Icon(
            Icons.arrow_back
        ),
      ),
      title: Text(
        "Alternate Meal Plan",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );
  }



  Widget _recipeCardOne(context) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: NetworkImage(
                'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/guacamole-mango-salad-with-black-beans-13f65e5.jpg?quality=90&webp=true&resize=300,272',
              ),
              height: 120,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10).copyWith(bottom: 0),
          child: Text(
            '''Guacamole & Mango Salad with Black Beans''',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('View More',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              // onPressed: _launchURLApp(url1)
            ),
          ],
        )
      ],
    ),
  );

  Widget _recipeCardTwo(context) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: NetworkImage(
                'https://www.tasteofhome.com/wp-content/uploads/2018/01/Slow-Cooker-Chicken-Taco-Salad_EXPS_HCBZ21_175204_B10_13_1b-3.jpg?fit=700,1024',
              ),
              height: 120,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10).copyWith(bottom: 0),
          child: Text(
            '''Blackened roast salmon with avocado & mango salsa''',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('View More',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              // onPressed: _launchURLApp('https://www.bbcgoodfood.com/recipes/blackened-roast-salmon-avocado-mango-salsa')
            ),
          ],
        )
      ],
    ),
  );

Widget _recipeCardThree(context) => Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: NetworkImage(
              'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/avocado-on-toast-96e3158.jpg?quality=90&webp=true&resize=300,272',
            ),
            height: 120,
            fit: BoxFit.cover,
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(10).copyWith(bottom: 0),
        child: Text(
          '''Avocado on toast''',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          FlatButton(
              child: Text('View More',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              // onPressed: _launchURLApp('https://www.bbcgoodfood.com/recipes/avocado-toast')
          ),
        ],
      )
    ],
  ),
);

Widget _recipeCardFour(context) => Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: NetworkImage(
              'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/avocado_blackbean_eggs-9b605bb.jpg?quality=90&webp=true&resize=300,272',
            ),
            height: 120,
            fit: BoxFit.cover,
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(10).copyWith(bottom: 0),
        child: Text(
          '''Avocado & black bean eggs''',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          FlatButton(
              child: Text('View More',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              // onPressed: _launchURLApp('https://www.bbcgoodfood.com/recipes/avocado-black-bean-eggs')
          ),
        ],
      )
    ],
  ),
);

