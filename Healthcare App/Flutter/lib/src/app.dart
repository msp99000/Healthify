import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/avocado.dart';
import 'package:flutter_flask_login/src/avocado2.dart';
import 'package:flutter_flask_login/src/avocado3.dart';
import 'package:flutter_flask_login/src/avocado4.dart';
import 'package:flutter_flask_login/src/avocado5.dart';
import 'package:flutter_flask_login/src/avocado6.dart';
import 'package:flutter_flask_login/src/beetroot.dart';
import 'package:flutter_flask_login/src/beetroot2.dart';
import 'package:flutter_flask_login/src/beetroot3.dart';
import 'package:flutter_flask_login/src/beetroot4.dart';
import 'package:flutter_flask_login/src/beetroot5.dart';
import 'package:flutter_flask_login/src/beetroot6.dart';
import 'package:flutter_flask_login/src/beetroot7.dart';
import 'package:flutter_flask_login/src/broccoli.dart';
import 'package:flutter_flask_login/src/broccoli2.dart';
import 'package:flutter_flask_login/src/broccoli3.dart';
import 'package:flutter_flask_login/src/broccoli4.dart';
import 'package:flutter_flask_login/src/broccoli5.dart';
import 'package:flutter_flask_login/src/cabbage.dart';
import 'package:flutter_flask_login/src/cabbage2.dart';
import 'package:flutter_flask_login/src/cabbage3.dart';
import 'package:flutter_flask_login/src/cabbage4.dart';
import 'package:flutter_flask_login/src/cabbage5.dart';
import 'package:flutter_flask_login/src/cabbage6.dart';
import 'package:flutter_flask_login/src/cabbage7.dart';
import 'package:flutter_flask_login/src/carrot.dart';
import 'package:flutter_flask_login/src/carrot2.dart';
import 'package:flutter_flask_login/src/carrot3.dart';
import 'package:flutter_flask_login/src/carrot4.dart';
import 'package:flutter_flask_login/src/carrot5.dart';
import 'package:flutter_flask_login/src/carrot6.dart';
import 'package:flutter_flask_login/src/carrot7.dart';
import 'package:flutter_flask_login/src/corn.dart';
import 'package:flutter_flask_login/src/corn2.dart';
import 'package:flutter_flask_login/src/corn3.dart';
import 'package:flutter_flask_login/src/corn4.dart';
import 'package:flutter_flask_login/src/corn5.dart';
import 'package:flutter_flask_login/src/googlespeech.dart';
import 'package:flutter_flask_login/src/category.dart';
import 'package:flutter_flask_login/src/lemon.dart';
import 'package:flutter_flask_login/src/lemon2.dart';
import 'package:flutter_flask_login/src/lemon3.dart';
import 'package:flutter_flask_login/src/lemon4.dart';
import 'package:flutter_flask_login/src/lemon5.dart';
import 'package:flutter_flask_login/src/lemon6.dart';
import 'package:flutter_flask_login/src/lemon7.dart';
import 'package:flutter_flask_login/src/meal.dart';
import 'package:flutter_flask_login/src/pepper.dart';
import 'package:flutter_flask_login/src/pepper2.dart';
import 'package:flutter_flask_login/src/pepper3.dart';
import 'package:flutter_flask_login/src/pepper4.dart';
import 'package:flutter_flask_login/src/pepper5.dart';
import 'package:flutter_flask_login/src/recipe_main.dart';
import 'package:flutter_flask_login/src/screens/home/classifier.dart';
import 'package:flutter_flask_login/src/screens/home/contact.dart';
import 'package:flutter_flask_login/src/screens/home/app_home.dart';
import 'package:flutter_flask_login/src/screens/home/profile.dart';
import 'package:flutter_flask_login/src/screens/landing_screen.dart';
import 'package:flutter_flask_login/src/screens/login/home.dart';
import 'package:flutter_flask_login/src/screens/login/login_screen.dart';
import 'package:flutter_flask_login/src/screens/register/register_screen.dart';
import 'package:flutter_flask_login/src/screens/settings_screen.dart';
import 'package:flutter_flask_login/src/spinach.dart';
import 'package:flutter_flask_login/src/spinach2.dart';
import 'package:flutter_flask_login/src/spinach3.dart';
import 'package:flutter_flask_login/src/spinach4.dart';
import 'package:flutter_flask_login/src/spinach5.dart';
import 'package:flutter_flask_login/src/tomato.dart';
import 'package:flutter_flask_login/src/tomato2.dart';
import 'package:flutter_flask_login/src/tomato3.dart';
import 'package:flutter_flask_login/src/tomato4.dart';
import 'package:flutter_flask_login/src/tomato5.dart';
import 'package:flutter_flask_login/src/tomato6.dart';
import 'package:flutter_flask_login/src/tomato7.dart';
import 'package:flutter_flask_login/src/tomato9.dart';
import 'package:flutter_flask_login/title_page.dart';
import 'package:flutter_flask_login/tomato8.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flask Login',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/title': (context) => TitlePage(),
        '/landing': (context) => LandingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/categories': (context) => CategoryPage(),
        '/profile': (context) => ProfilePage(),
        '/contact': (context) => Contact(),
        '/classifier': (context) => Classifier(),
        '/avocado': (context) => Avocado(),
        '/beetroot': (context) => Beetroot(),
        '/beetroot2': (context) => BeetrootTwo(),
        '/beetroot3': (context) => BeetrootThree(),
        '/beetroot4': (context) => BeetrootFour(),
        '/beetroot5': (context) => BeetrootFive(),
        '/beetroot6': (context) => BeetrootSix(),
        '/beetroot7': (context) => BeetrootSeven(),
        '/broccoli': (context) => Broccoli(),
        '/broccoli2': (context) => BroccoliTwo(),
        '/broccoli3': (context) => BroccoliThree(),
        '/broccoli4': (context) => BroccoliFour(),
        '/broccoli5': (context) => BroccoliFive(),
        '/cabbage': (context) => Cabbage(),
        '/cabbage2': (context) => CabbageTwo(),
        '/cabbage3': (context) => CabbageThree(),
        '/cabbage4': (context) => CabbageFour(),
        '/cabbage5': (context) => CabbageFive(),
        '/cabbage6': (context) => CabbageSix(),
        '/cabbage7': (context) => CabbageSeven(),
        '/carrot': (context) => Carrot(),
        '/carrot2': (context) => CarrotTwo(),
        '/carrot3': (context) => CarrotThree(),
        '/carrot4': (context) => CarrotFour(),
        '/carrot5': (context) => CarrotFive(),
        '/carrot6': (context) => CarrotSix(),
        '/carrot7': (context) => CarrotSeven(),
        '/lemon': (context) => Lemon(),
        '/pepper': (context) => Pepper(),
        '/pepper2': (context) => PepperTwo(),
        '/pepper3': (context) => PepperThree(),
        '/pepper4': (context) => PepperFour(),
        '/pepper5': (context) => PepperFive(),
        '/spinach': (context) => Spinach(),
        '/spinach2': (context) => SpinachTwo(),
        '/spinach3': (context) => SpinachThree(),
        '/spinach4': (context) => SpinachFour(),
        '/spinach5': (context) => SpinachFive(),
        '/tomato': (context) => Tomato(),
        '/avocado2': (context) => AvocadoTwo(),
        '/avocado3': (context) => AvocadoThree(),
        '/lemon2': (context) => LemonTwo(),
        '/lemon3': (context) => LemonThree(),
        '/lemon4': (context) => LemonFour(),
        '/google': (context) => GoogleSpeech(),
        '/avocado4': (context) => AvocadoFour(),
        '/avocado5': (context) => AvocadoFive(),
        '/avocado6': (context) => AvocadoSix(),
        '/entry': (context) => HomePage(),
        '/meal': (context) => MealPlan(),
        '/lemon5': (context) => LemonFive(),
        '/lemon6': (context) => LemonSix(),
        '/lemon7': (context) => LemonSeven(),
        '/recipe': (context) => RecipePage(),
        '/tomato4': (context) => TomatoFour(),
        '/tomato3': (context) => TomatoThree(),
        '/tomato5': (context) => TomatoFive(),
        '/tomato6': (context) => TomatoSix(),
        '/tomato2': (context) => TomatoTwo(),
        '/tomato7': (context) => TomatoSeven(),
        '/tomato8': (context) => TomatoEight(),
        '/tomato9': (context) => TomatoNine(),
        '/corn': (context) => Corn(),
        '/corn2': (context) => CornTwo(),
        '/corn3': (context) => CornThree(),
        '/corn4': (context) => CornFour(),
        '/corn5': (context) => CornFive(),
      },
    );
  }
}
