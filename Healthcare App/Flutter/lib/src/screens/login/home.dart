import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle kHeading = TextStyle(
  fontSize: 56,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const TextStyle kBodyText = TextStyle(
  fontSize: 20,
  color: Colors.white,
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        InkWell(
                          child: Text(
                            'Home Bridge',
                            style: kHeading,
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/settings');
                          },
                        ),
                      ]
                    ),
                  ),

                  InkWell(
                    child: Text(
                      "Your Health Care App",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 200,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              height: 60,
                              minWidth: 300,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              color: Colors.green,
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('login_bg.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
