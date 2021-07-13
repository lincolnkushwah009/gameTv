import 'package:flutter/material.dart';
import 'package:gametv/Animations/FadeAnimation.dart';
import 'package:gametv/Home.dart';
import 'package:gametv/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  bool checkEmailorPhone = false;
  bool checkPassword = false;

  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void validate() async {
    setState(() {
      checkEmailorPhone = true;
      checkPassword = true;
    });

    // String emailRegex =
    //     '([a-zA-Z0-9_\\-\\.]+)@((\\[a-z]{1,3}\\.[a-z]{1,3}\\.[a-z]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})';
    // bool emailValid =
    //     RegExp(emailRegex).hasMatch(emailController.text.toString());

    if (emailController.text.length == 0) {
      setState(() {
        checkEmailorPhone = false;
      });
    }

    // String phoneRegex = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    // RegExp regExp = new RegExp(phoneRegex);
    if (emailController.text.length == 0) {
      setState(() {
        checkEmailorPhone = false;
      });
    }

    if (checkEmailorPhone && checkPassword) {
      if (emailController.text == "9898989898" &&
          passwordController.text == "password123") {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('email', emailController.text);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (BuildContext ctx) => Home()));
      } else if (emailController.text == "9876543210" &&
          passwordController.text == "password123") {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('email', emailController.text);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (BuildContext ctx) => Home()));
      } else
        snackBar("Email or password not valid");
    } else {
      snackBar("Email or password not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
                1.2,
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
                1.5,
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(.8)),
                              hintText: "Email or Phone number"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(.8)),
                              hintText: "Password"),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 40,
            ),


            FadeAnimation(
                1.8,
                Center(
                  child: Center(
                      child: FlatButton(
                        child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () async {
                          validate();
                        },
                      ),
                )),
            )

          ],
        ),
      ),
    );
  }
}