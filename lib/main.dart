import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

import 'package:pullup/views/home.dart';
import 'package:pullup/views/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (await FirebaseAuth.instance.currentUser != null) {
    Fluttertoast.showToast(
      msg: 'User logged in.',
      gravity: ToastGravity.TOP,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 3,
    );
    runApp(
      MaterialApp(
        home: HomeScreen(),
      ),
    );
  } else {
    runApp(
      MaterialApp(
        home: LogInScreen(),
      ),
    );
  }
}
