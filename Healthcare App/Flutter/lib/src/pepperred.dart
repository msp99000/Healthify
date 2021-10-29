import 'dart:ui';
import 'package:flutter/material.dart';

class PepperRed extends StatelessWidget {
  @override
  const PepperRed({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _sideDrawer(context),
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget> [
          SizedBox(
            height: 30,
          ),
          Text("Pepper Red",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget> [
              SizedBox(
                width: 80,
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Upload",
                  style: TextStyle(fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/classifier');
                },
              ),
              SizedBox(
                width: 60,
              ),
              InkWell(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 48,
                ),
                // onTap: pickImage,
              ),
              // _output != null
              // ? Text(
              //   '${_output[0]['label']}',
              //   style: TextStyle(
              //       color: Colors.white, fontSize: 20),
              // ):
              SizedBox(
                width: 30,
              ),
              InkWell(
                child: Icon(
                  Icons.keyboard_voice,
                  color: Colors.black,
                  size: 48,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          SizedBox(width: 10),
          InkWell(
            child: Icon(
              Icons.record_voice_over_sharp,
              color: Colors.grey[700],
              size: 38,
            ),
          ),
          SizedBox(width: 148),
          InkWell(
            child: Icon(
              Icons.add_to_photos_outlined,
              color: Colors.grey[700],
              size: 38,
            ),
          ),
          SizedBox(width: 148),
          InkWell(
            child: Icon(
              Icons.library_books_rounded,
              color: Colors.grey[700],
              size: 38,
            ),
            // onTap:()
            // onTap: () {
            //   Navigator.pushNamed(context, "/categories");
            // }
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
  );
}

Widget _sideDrawer(context) {
  return Drawer(

    child: Column(
      children: <Widget> [
        DrawerHeader(
          child: Center(
            child: Text("Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color:Colors.black
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Home",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, "/home");
          },
        ),
        ListTile(
          title: Text(
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, "/profile");
          },
        ),
        ListTile(
          title: Text(
            "Contact Us",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, "/contact");
          },
        ),
        ListTile(
          title: Text(
            "Logout",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, "/login");
          },
        ),
      ],
    ),
  );
}

