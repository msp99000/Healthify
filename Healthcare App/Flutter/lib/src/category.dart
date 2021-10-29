import 'dart:ui';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  const CategoryPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      drawer: _sideDrawer(context),
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget> [
          SizedBox(
            height: 30,
          ),
          Text("Diet Plan",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left:30, right:30),
            child: Row(
              children: <Widget> [
                // SizedBox(
                //   width: 80,
                // ),
                MaterialButton(
                  height:40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
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
                Spacer(),
                // SizedBox(
                //   width: 60,
                // ),
                InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 48,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/recipe');
                  },
                ),
                // SizedBox(
                //   width: 30,
                // ),
                Spacer(),
                InkWell(
                  child: Icon(
                    Icons.keyboard_voice,
                    color: Colors.redAccent,
                    size: 48,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/google');
                  },
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.5,
            width: MediaQuery.of(context).size.width/2.5,
            child: Image.asset('homebridge.png'),
          )
        ],
      ),
      bottomNavigationBar:
      Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Icon(
                Icons.record_voice_over_sharp,
                color: Colors.blueGrey,
                size: 38,
              ),
            ),
            Spacer(),
            InkWell(
              child: Icon(
                Icons.add_to_photos_outlined,
                color: Colors.blueGrey,
                size: 38,
              ),
            ),
            Spacer(),
            InkWell(
              child: Icon(
                Icons.home_rounded,
                color: Colors.blueGrey,
                size: 38,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      )
    )
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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('homebridge.png'),
                  fit: BoxFit.cover),
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

