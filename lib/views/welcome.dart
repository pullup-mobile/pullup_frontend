import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pullup/views/login.dart';
import 'package:pullup/views/signup.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 175.0,
                ),
                Image.asset(
                  'images/logo.jpg',
                  width: 375.0,
                  height: 375.0,
                ),
                SizedBox(
                  height: 208.0,
                ),
                // SizedBox(
                //   height: 100.0,
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(75.0, 20.0, 75.0, 20.0),
                //   child: Text(
                //     'Cross-platform mobile application built using Flutter that displays parking lot vacancy within a city using deep learning data.',
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                SizedBox(
                  width: 375.0,
                  height: 50.0,
                  child: ElevatedButton(
                    child: Text(
                      'Try Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Color(0xFF019FBF),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignUpScreen()),
                      // );
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Already a member? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: 'Login!',
                          style: TextStyle(
                            color: Color(0xFF019FBF),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => LogInScreen()),
                              // );
                            }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
