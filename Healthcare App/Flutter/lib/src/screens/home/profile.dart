import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfilePage extends StatelessWidget {
  @override
  const ProfilePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color:Colors.black
          )
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(Icons.home_rounded,
            size: 36,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Text("Your Text Here",
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color:Colors.black
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}