// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, duplicate_ignore, unused_local_variable

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/homescreen/homescreen.dart';

// ignore: camel_case_types
class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

// ignore: camel_case_types
class _signinState extends State<signin> {
  // ignore: non_constant_identifier_names, unused_element
  Future<void> _googleSignUp() async {
    try {
      // ignore: no_leading_underscores_for_local_identifiers
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );



      // print("signed in " + user.displayName);

      // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assest/food.jpg"))),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: double.infinity,

          // ignore: duplicate_ignore
          child: Column(children: [
            // ignore: prefer_const_constructors
            Text(
              "signin to continue",
              style: TextStyle(color: Colors.white, fontSize: 19, shadows: [
                BoxShadow(blurRadius: 5, color: Colors.green.shade900)
              ]),
            ),
            Text(
              "Akshay",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.greenAccent,
                  shadows: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(3, 3))
                  ]),
            ),
            SignInButton(
              Buttons.Google,
              text: ("sign up with Google"),
              onPressed: () {
                _googleSignUp().then((value) => Navigator.of(context)
                    .pushReplacement(
                        MaterialPageRoute(builder: (context) => homescreen()),),);
              },
            ),

            SignInButton(Buttons.GitHub,
                text: "Sign up with GitHub", onPressed: () {}),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "By signing in you are agreeing to our ",
                  style: TextStyle(color: Colors.white, fontSize: 17, shadows: [
                    BoxShadow(blurRadius: 5, color: Colors.green.shade900)
                  ]),
                ),
              ),
            ),
            Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                        child: Text("Terms and Pricacy policy ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.green.shade900)
                                ]))))
              ],
            ),
          ]),
        ),
      ]),
    ));
  }
}
