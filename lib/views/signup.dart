import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:pullup/views/home.dart';

import 'login.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKeySignUp = GlobalKey<FormState>();
  final formControllerEmail = TextEditingController();
  final formControllerPassword = TextEditingController();
  final formControllerConfirmPassword = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  void dispose() {
    formControllerEmail.dispose();
    formControllerPassword.dispose();
    formControllerConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                    child: Text(
                      "Hi Friend!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 25.0),
                    child: Text(
                      "Let's get started.",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKeySignUp,
                child: Column(
                  children: [
                    Container(
                      height: 150.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !(EmailValidator.validate(value))) {
                              return 'Please enter a valid email.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.mail_outline,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Email',
                          ),
                          controller: formControllerEmail,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            String pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                            RegExp regex = new RegExp(pattern);
                            if (value == null ||
                                value.isEmpty ||
                                !(regex.hasMatch(value))) {
                              return 'Password must have at least: 8 characters, 1 uppercase letter, 1 lower case letter, 1 digit, and 1 special character.';
                            } else {
                              if ((formControllerPassword.text !=
                                      formControllerConfirmPassword.text) &&
                                  formControllerConfirmPassword
                                      .text.isNotEmpty) {
                                return 'Passwords do not match.';
                              }
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock_open,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Password',
                            errorMaxLines: 2,
                          ),
                          controller: formControllerPassword,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: TextFormField(
                          validator: (value) {
                            String pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{4,}$';
                            RegExp regex = new RegExp(pattern);
                            if (value == null ||
                                value.isEmpty ||
                                !(regex.hasMatch(value))) {
                              return 'Password must have at least: 8 characters, 1 uppercase letter, 1 lower case letter, 1 digit, and 1 special character.';
                            } else {
                              if ((formControllerPassword.text !=
                                      formControllerConfirmPassword.text) &&
                                  formControllerPassword.text.isNotEmpty) {
                                return 'Passwords do not match.';
                              }
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF019FBF),
                            ),
                            labelText: 'Confirm Password',
                            errorMaxLines: 2,
                          ),
                          controller: formControllerConfirmPassword,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 112.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 375.0,
                            height: 50.0,
                            child: ElevatedButton(
                                child: Text(
                                  'Sign Up',
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
                                  if (_formKeySignUp.currentState!.validate()) {
                                    _signUp(formControllerEmail.text,
                                        formControllerPassword.text);
                                  }
                                }),
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LogInScreen()),
                                        );
                                      }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _signUp(String _email, String _password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      auth.authStateChanges().listen((User? user) async {
        if (!(user!.emailVerified)) {
          await user.sendEmailVerification();
          Fluttertoast.showToast(
            msg: 'Account created. Please verify email to log in.',
            gravity: ToastGravity.TOP,
            toastLength: Toast.LENGTH_LONG,
            timeInSecForIosWeb: 3,
          );
        }
      });
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LogInScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
          msg: 'Account already exists with that email.',
          gravity: ToastGravity.TOP,
          toastLength: Toast.LENGTH_LONG,
          timeInSecForIosWeb: 3,
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
