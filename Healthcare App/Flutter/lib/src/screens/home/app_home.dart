import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flask_login/src/repositories/auth_repository.dart';
import 'package:flutter_flask_login/src/screens/home/profile_bloc.dart';
import 'package:flutter_flask_login/src/utils/service_locator.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc()..add(LoadProfile()),
      child: HomeScreenBuilder(),
    );
  }
}

class HomeScreenBuilder extends StatefulWidget {
  const HomeScreenBuilder({Key key}) : super(key: key);

  @override
  _HomeScreenBuilderState createState() => _HomeScreenBuilderState();
}

class _HomeScreenBuilderState extends State<HomeScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _sideDrawer(),
        appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width/2,
                child: Image.asset('homebridge.png'),
              ),

              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left:20, right:20),
                  child: Text(
                      "Select from options below \n\n"
                          "1. Voice Bot \n"
                          "2. Calories Counting \n"
                          "3. Diet Plan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)
                  ),
              )
            ]
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
              // SizedBox(width: 139),
              Spacer(),
              InkWell(
                child: Icon(
                  Icons.add_to_photos_outlined,
                  color: Colors.blueGrey,
                  size: 38,
                ),
              ),
              // SizedBox(width: 139),
              Spacer(),
              InkWell(
                child: Icon(
                  Icons.library_books_rounded,
                  color: Colors.blueGrey,
                  size: 38,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/categories');
                },
              ),
            ],
          ),
        )
    );
  }

  Widget _sideDrawer() {
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

  Widget _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    );
  }

  void onLogoutPressed() async {
    var authRepo = serviceLocator.get<AuthRepository>();
    await authRepo.logout();

    // Go to Landing screen
    Navigator.pushReplacementNamed(context, "/title");
  }
}
