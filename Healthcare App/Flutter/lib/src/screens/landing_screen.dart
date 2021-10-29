import 'package:flutter/material.dart';
import 'package:flutter_flask_login/src/repositories/auth_repository.dart';
import 'package:flutter_flask_login/src/utils/service_locator.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  AuthRepository authRepository = serviceLocator.get<AuthRepository>();

  @override
  void initState() {
    super.initState();
    _resolveNextPage();
  }

  void _resolveNextPage() async {
    await Future.delayed(Duration(seconds: 3));
    if (await _navigateIfUserLoggedIn()) return;

    await _navigateToLoginScreen();
  }

  Future<bool> _navigateIfUserLoggedIn() async {
    bool userLoggedIn = await authRepository.isUserLoggedIn();
    if (userLoggedIn) {
      Navigator.of(context).pushReplacementNamed("/home");
      return true;
    }
    return false;
  }

  Future<void> _navigateToLoginScreen() async {
    Navigator.of(context).pushReplacementNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text("Home Bridge",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold), ),
              // FlutterLogo(
              //   size: MediaQuery.of(context).size.width / 2,
              // ),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(height: 30,),
              Text("Loading",style: TextStyle(
                fontSize: 20,
              ),),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
