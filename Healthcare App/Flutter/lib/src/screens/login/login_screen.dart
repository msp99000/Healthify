import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flask_login/src/screens/login/login_bloc.dart';
import 'package:flutter_flask_login/src/widgets/dialogues.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: LoginScreenBuilder(),
    );
  }
}

class LoginScreenBuilder extends StatefulWidget {
  const LoginScreenBuilder({Key key}) : super(key: key);

  @override
  _LoginScreenBuilderState createState() => _LoginScreenBuilderState();
}

class _LoginScreenBuilderState extends State<LoginScreenBuilder> {
  final formKey = GlobalKey<FormState>();

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (_, state) {
          if (state is LoginError) {
            onLoginFailed(state);
          } else if (state is LoginSuccess) {
            onLoginSuccess();
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (_, state) {
            return Center(
              child: Column(
                children: [
                  _buildForm(),
                  SizedBox(
                    height: 60,
                  ),
                  _buildButton(state),
                  SizedBox(
                    height: 30,
                  ),
                  _buildRegisterSection(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildBlocStateIndicator(state),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // Login States helpers
  void onLoginFailed(LoginError state) {
    showDialog(
      context: context,
      builder: (_) {
        return ErrorDialog(state.error);
      },
    );
  }

  void onLoginSuccess() {
    showDialog(
      context: context,
      builder: (_) {
        return SuccessDialog("You have been logged!");
      },
    ).then((value) {
      goToLandingScreen();
    });
  }

  /// Widgets
  ///
  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/entry');
        },
        icon: Icon(
          Icons.home_rounded,
          size: 36,
          color: Colors.black,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
        )
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              "Login",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height:20
            ),
            Container(
                height: 200,
                width: 200,
              child: Image.asset('homebridge.png'),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Username"),
              validator: (value) {
                if (value == null || value.trim().isEmpty) return "Empty Field";
                return null;
              },
              controller: usernameController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) return "Empty Field";
                return null;
              },
              controller: passwordController,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(LoginState state) {
    bool isDisabled = state is LoginLoading;
    return MaterialButton(
      height: 60,
      minWidth: 300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Colors.blueAccent,
      child: Text(
        "Login",
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: isDisabled ? null : onLoginPressed,
    );
  }

  Widget _buildRegisterSection() {
    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("New user? ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                InkWell(
                  onTap: goToRegisterScreen,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        );
  }

  Widget _buildBlocStateIndicator(LoginState state) {
    if (state is LoginLoading) return CircularProgressIndicator();
    return Container();
  }

  void onLoginPressed() async {
    FocusScope.of(context).unfocus();
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      String username = usernameController.text;
      String password = passwordController.text;

      BlocProvider.of<LoginBloc>(context).add(AttemptLogin(username, password));
    }
  }

  void goToRegisterScreen() {
    Navigator.pushReplacementNamed(context, "/register");
  }

  void goToLandingScreen() {
    Navigator.pushReplacementNamed(context, "/landing");
  }
}
