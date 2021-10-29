import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/screens/login/login_screen.dart';

class TitlePage extends StatelessWidget {
  @override
  const TitlePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        // title: Text("Home Bridge"),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),

            child: InkWell(
              child: Icon(Icons.settings,
                color: Colors.grey[700],
                size: 36,),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Home Bridge",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("The Simple Act of Caring is HEROIC!!!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/welcome.png")
                    )
                ),
              ),

              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 80,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                    },
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Go",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  // creating the signup button
                  SizedBox(height:20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}