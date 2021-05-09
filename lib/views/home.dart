import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/floors/floorsNorth.dart';
import 'package:pullup/views/floors/floorsSouth.dart';
import 'dart:async';

import 'package:pullup/views/floors/floorsWest.dart';
import 'package:pullup/views/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth = FirebaseAuth.instance;
  @required
  late String _timeString = "...";
  late int _weekDay = 1;
  late String _dayOfWeek;
  late String _date = "";
  late String _year = "";
  late String _month = "";
  late String _day = "";
  late int _hour = 0;
  // late String _min;
  // late String _sec;
  final databaseReferenceW1A = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceW1B = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceW1C = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceW1D = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceW1E = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceW1F = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceW1G = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceW1H = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceW1I = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceW1J = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_1")
      .child("Section_J")
      .child("available_spots");
  String sectionW1A = "";
  String sectionW1B = "";
  String sectionW1C = "";
  String sectionW1D = "";
  String sectionW1E = "";
  String sectionW1F = "";
  String sectionW1G = "";
  String sectionW1H = "";
  String sectionW1I = "";
  String sectionW1J = "";
  int secW1A = 0;
  int secW1B = 0;
  int secW1C = 0;
  int secW1D = 0;
  int secW1E = 0;
  int secW1F = 0;
  int secW1G = 0;
  int secW1H = 0;
  int secW1I = 0;
  int secW1J = 0;
  int totalSpotsW1 = 0;
  final databaseReferenceW2A = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceW2B = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceW2C = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceW2D = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceW2E = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceW2F = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceW2G = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceW2H = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceW2I = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceW2J = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_2")
      .child("Section_J")
      .child("available_spots");
  String sectionW2A = "";
  String sectionW2B = "";
  String sectionW2C = "";
  String sectionW2D = "";
  String sectionW2E = "";
  String sectionW2F = "";
  String sectionW2G = "";
  String sectionW2H = "";
  String sectionW2I = "";
  String sectionW2J = "";
  int secW2A = 0;
  int secW2B = 0;
  int secW2C = 0;
  int secW2D = 0;
  int secW2E = 0;
  int secW2F = 0;
  int secW2G = 0;
  int secW2H = 0;
  int secW2I = 0;
  int secW2J = 0;
  int totalSpotsW2 = 0;
  final databaseReferenceW3A = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceW3B = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceW3C = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceW3D = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceW3E = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceW3F = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceW3G = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceW3H = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceW3I = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceW3J = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_3")
      .child("Section_J")
      .child("available_spots");
  String sectionW3A = "";
  String sectionW3B = "";
  String sectionW3C = "";
  String sectionW3D = "";
  String sectionW3E = "";
  String sectionW3F = "";
  String sectionW3G = "";
  String sectionW3H = "";
  String sectionW3I = "";
  String sectionW3J = "";
  int secW3A = 0;
  int secW3B = 0;
  int secW3C = 0;
  int secW3D = 0;
  int secW3E = 0;
  int secW3F = 0;
  int secW3G = 0;
  int secW3H = 0;
  int secW3I = 0;
  int secW3J = 0;
  int totalSpotsW3 = 0;
  final databaseReferenceW4A = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceW4B = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceW4C = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceW4D = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceW4E = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceW4F = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceW4G = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceW4H = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceW4I = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceW4J = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_4")
      .child("Section_J")
      .child("available_spots");
  String sectionW4A = "";
  String sectionW4B = "";
  String sectionW4C = "";
  String sectionW4D = "";
  String sectionW4E = "";
  String sectionW4F = "";
  String sectionW4G = "";
  String sectionW4H = "";
  String sectionW4I = "";
  String sectionW4J = "";
  int secW4A = 0;
  int secW4B = 0;
  int secW4C = 0;
  int secW4D = 0;
  int secW4E = 0;
  int secW4F = 0;
  int secW4G = 0;
  int secW4H = 0;
  int secW4I = 0;
  int secW4J = 0;
  int totalSpotsW4 = 0;
  final databaseReferenceW5A = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceW5B = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceW5C = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceW5D = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceW5E = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceW5F = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceW5G = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceW5H = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceW5I = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceW5J = FirebaseDatabase.instance
      .reference()
      .child("West_Garage_Floor_5")
      .child("Section_J")
      .child("available_spots");
  String sectionW5A = "";
  String sectionW5B = "";
  String sectionW5C = "";
  String sectionW5D = "";
  String sectionW5E = "";
  String sectionW5F = "";
  String sectionW5G = "";
  String sectionW5H = "";
  String sectionW5I = "";
  String sectionW5J = "";
  int secW5A = 0;
  int secW5B = 0;
  int secW5C = 0;
  int secW5D = 0;
  int secW5E = 0;
  int secW5F = 0;
  int secW5G = 0;
  int secW5H = 0;
  int secW5I = 0;
  int secW5J = 0;
  int totalSpotsW5 = 0;
  int totalSpotsW = 0;
  final databaseReferenceS1A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceS1B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceS1C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceS1D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceS1E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceS1F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceS1G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceS1H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceS1I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceS1J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_J")
      .child("available_spots");
  String sectionS1A = "";
  String sectionS1B = "";
  String sectionS1C = "";
  String sectionS1D = "";
  String sectionS1E = "";
  String sectionS1F = "";
  String sectionS1G = "";
  String sectionS1H = "";
  String sectionS1I = "";
  String sectionS1J = "";
  int secS1A = 0;
  int secS1B = 0;
  int secS1C = 0;
  int secS1D = 0;
  int secS1E = 0;
  int secS1F = 0;
  int secS1G = 0;
  int secS1H = 0;
  int secS1I = 0;
  int secS1J = 0;
  int totalSpotsS1 = 0;
  final databaseReferenceS2A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceS2B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceS2C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceS2D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceS2E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceS2F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceS2G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceS2H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceS2I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceS2J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_J")
      .child("available_spots");
  String sectionS2A = "";
  String sectionS2B = "";
  String sectionS2C = "";
  String sectionS2D = "";
  String sectionS2E = "";
  String sectionS2F = "";
  String sectionS2G = "";
  String sectionS2H = "";
  String sectionS2I = "";
  String sectionS2J = "";
  int secS2A = 0;
  int secS2B = 0;
  int secS2C = 0;
  int secS2D = 0;
  int secS2E = 0;
  int secS2F = 0;
  int secS2G = 0;
  int secS2H = 0;
  int secS2I = 0;
  int secS2J = 0;
  int totalSpotsS2 = 0;
  final databaseReferenceS3A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceS3B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceS3C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceS3D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceS3E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceS3F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceS3G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceS3H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceS3I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceS3J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_J")
      .child("available_spots");
  String sectionS3A = "";
  String sectionS3B = "";
  String sectionS3C = "";
  String sectionS3D = "";
  String sectionS3E = "";
  String sectionS3F = "";
  String sectionS3G = "";
  String sectionS3H = "";
  String sectionS3I = "";
  String sectionS3J = "";
  int secS3A = 0;
  int secS3B = 0;
  int secS3C = 0;
  int secS3D = 0;
  int secS3E = 0;
  int secS3F = 0;
  int secS3G = 0;
  int secS3H = 0;
  int secS3I = 0;
  int secS3J = 0;
  int totalSpotsS3 = 0;
  final databaseReferenceS4A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceS4B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceS4C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceS4D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceS4E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceS4F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceS4G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceS4H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceS4I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceS4J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_J")
      .child("available_spots");
  String sectionS4A = "";
  String sectionS4B = "";
  String sectionS4C = "";
  String sectionS4D = "";
  String sectionS4E = "";
  String sectionS4F = "";
  String sectionS4G = "";
  String sectionS4H = "";
  String sectionS4I = "";
  String sectionS4J = "";
  int secS4A = 0;
  int secS4B = 0;
  int secS4C = 0;
  int secS4D = 0;
  int secS4E = 0;
  int secS4F = 0;
  int secS4G = 0;
  int secS4H = 0;
  int secS4I = 0;
  int secS4J = 0;
  int totalSpotsS4 = 0;
  final databaseReferenceS5A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceS5B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceS5C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceS5D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceS5E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceS5F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceS5G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceS5H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceS5I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceS5J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_J")
      .child("available_spots");
  String sectionS5A = "";
  String sectionS5B = "";
  String sectionS5C = "";
  String sectionS5D = "";
  String sectionS5E = "";
  String sectionS5F = "";
  String sectionS5G = "";
  String sectionS5H = "";
  String sectionS5I = "";
  String sectionS5J = "";
  int secS5A = 0;
  int secS5B = 0;
  int secS5C = 0;
  int secS5D = 0;
  int secS5E = 0;
  int secS5F = 0;
  int secS5G = 0;
  int secS5H = 0;
  int secS5I = 0;
  int secS5J = 0;
  int totalSpotsS5 = 0;
  int totalSpotsS = 0;
  final databaseReferenceN1A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN1B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN1C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN1D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN1E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN1F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN1G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN1H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN1I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN1J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_1")
      .child("Section_J")
      .child("available_spots");
  String sectionN1A = "";
  String sectionN1B = "";
  String sectionN1C = "";
  String sectionN1D = "";
  String sectionN1E = "";
  String sectionN1F = "";
  String sectionN1G = "";
  String sectionN1H = "";
  String sectionN1I = "";
  String sectionN1J = "";
  int secN1A = 0;
  int secN1B = 0;
  int secN1C = 0;
  int secN1D = 0;
  int secN1E = 0;
  int secN1F = 0;
  int secN1G = 0;
  int secN1H = 0;
  int secN1I = 0;
  int secN1J = 0;
  int totalSpotsN1 = 0;
  final databaseReferenceN2A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN2B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN2C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN2D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN2E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN2F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN2G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN2H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN2I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN2J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_2")
      .child("Section_J")
      .child("available_spots");
  String sectionN2A = "";
  String sectionN2B = "";
  String sectionN2C = "";
  String sectionN2D = "";
  String sectionN2E = "";
  String sectionN2F = "";
  String sectionN2G = "";
  String sectionN2H = "";
  String sectionN2I = "";
  String sectionN2J = "";
  int secN2A = 0;
  int secN2B = 0;
  int secN2C = 0;
  int secN2D = 0;
  int secN2E = 0;
  int secN2F = 0;
  int secN2G = 0;
  int secN2H = 0;
  int secN2I = 0;
  int secN2J = 0;
  int totalSpotsN2 = 0;
  final databaseReferenceN3A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN3B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN3C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN3D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN3E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN3F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN3G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN3H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN3I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN3J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_J")
      .child("available_spots");
  String sectionN3A = "";
  String sectionN3B = "";
  String sectionN3C = "";
  String sectionN3D = "";
  String sectionN3E = "";
  String sectionN3F = "";
  String sectionN3G = "";
  String sectionN3H = "";
  String sectionN3I = "";
  String sectionN3J = "";
  int secN3A = 0;
  int secN3B = 0;
  int secN3C = 0;
  int secN3D = 0;
  int secN3E = 0;
  int secN3F = 0;
  int secN3G = 0;
  int secN3H = 0;
  int secN3I = 0;
  int secN3J = 0;
  int totalSpotsN3 = 0;
  final databaseReferenceN4A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN4B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN4C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN4D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN4E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN4F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN4G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN4H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN4I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN4J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_4")
      .child("Section_J")
      .child("available_spots");
  String sectionN4A = "";
  String sectionN4B = "";
  String sectionN4C = "";
  String sectionN4D = "";
  String sectionN4E = "";
  String sectionN4F = "";
  String sectionN4G = "";
  String sectionN4H = "";
  String sectionN4I = "";
  String sectionN4J = "";
  int secN4A = 0;
  int secN4B = 0;
  int secN4C = 0;
  int secN4D = 0;
  int secN4E = 0;
  int secN4F = 0;
  int secN4G = 0;
  int secN4H = 0;
  int secN4I = 0;
  int secN4J = 0;
  int totalSpotsN4 = 0;
  final databaseReferenceN5A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN5B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN5C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN5D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN5E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN5F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN5G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN5H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN5I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN5J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_5")
      .child("Section_J")
      .child("available_spots");
  String sectionN5A = "";
  String sectionN5B = "";
  String sectionN5C = "";
  String sectionN5D = "";
  String sectionN5E = "";
  String sectionN5F = "";
  String sectionN5G = "";
  String sectionN5H = "";
  String sectionN5I = "";
  String sectionN5J = "";
  int secN5A = 0;
  int secN5B = 0;
  int secN5C = 0;
  int secN5D = 0;
  int secN5E = 0;
  int secN5F = 0;
  int secN5G = 0;
  int secN5H = 0;
  int secN5I = 0;
  int secN5J = 0;
  int totalSpotsN5 = 0;
  final databaseReferenceN6A = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceN6B = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceN6C = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceN6D = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceN6E = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceN6F = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceN6G = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceN6H = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceN6I = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceN6J = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_6")
      .child("Section_J")
      .child("available_spots");
  String sectionN6A = "";
  String sectionN6B = "";
  String sectionN6C = "";
  String sectionN6D = "";
  String sectionN6E = "";
  String sectionN6F = "";
  String sectionN6G = "";
  String sectionN6H = "";
  String sectionN6I = "";
  String sectionN6J = "";
  int secN6A = 0;
  int secN6B = 0;
  int secN6C = 0;
  int secN6D = 0;
  int secN6E = 0;
  int secN6F = 0;
  int secN6G = 0;
  int secN6H = 0;
  int secN6I = 0;
  int secN6J = 0;
  int totalSpotsN6 = 0;
  int totalSpotsN = 0;

  Future readData() async {
    databaseReferenceW1A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1A = snapshot.value.toString();
        secW1A = snapshot.value;
      });
    });
    databaseReferenceW1B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1B = snapshot.value.toString();
        secW1B = snapshot.value;
      });
    });
    databaseReferenceW1C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1C = snapshot.value.toString();
        secW1C = snapshot.value;
      });
    });
    databaseReferenceW1D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1D = snapshot.value.toString();
        secW1D = snapshot.value;
      });
    });
    databaseReferenceW1E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1E = snapshot.value.toString();
        secW1E = snapshot.value;
      });
    });
    databaseReferenceW1F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1F = snapshot.value.toString();
        secW1F = snapshot.value;
      });
    });
    databaseReferenceW1G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1G = snapshot.value.toString();
        secW1G = snapshot.value;
      });
    });
    databaseReferenceW1H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1H = snapshot.value.toString();
        secW1H = snapshot.value;
      });
    });
    databaseReferenceW1I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1I = snapshot.value.toString();
        secW1I = snapshot.value;
      });
    });
    databaseReferenceW1J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW1J = snapshot.value.toString();
        secW1J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsW1 = secW1A +
          secW1B +
          secW1C +
          secW1D +
          secW1E +
          secW1F +
          secW1G +
          secW1H +
          secW1I +
          secW1J;
    });
    databaseReferenceW2A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2A = snapshot.value.toString();
        secW2A = snapshot.value;
      });
    });
    databaseReferenceW2B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2B = snapshot.value.toString();
        secW2B = snapshot.value;
      });
    });
    databaseReferenceW2C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2C = snapshot.value.toString();
        secW2C = snapshot.value;
      });
    });
    databaseReferenceW2D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2D = snapshot.value.toString();
        secW2D = snapshot.value;
      });
    });
    databaseReferenceW2E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2E = snapshot.value.toString();
        secW2E = snapshot.value;
      });
    });
    databaseReferenceW2F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2F = snapshot.value.toString();
        secW2F = snapshot.value;
      });
    });
    databaseReferenceW2G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2G = snapshot.value.toString();
        secW2G = snapshot.value;
      });
    });
    databaseReferenceW2H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2H = snapshot.value.toString();
        secW2H = snapshot.value;
      });
    });
    databaseReferenceW2I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2I = snapshot.value.toString();
        secW2I = snapshot.value;
      });
    });
    databaseReferenceW2J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW2J = snapshot.value.toString();
        secW2J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsW2 = secW2A +
          secW2B +
          secW2C +
          secW2D +
          secW2E +
          secW2F +
          secW2G +
          secW2H +
          secW2I +
          secW2J;
    });
    databaseReferenceW3A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3A = snapshot.value.toString();
        secW3A = snapshot.value;
      });
    });
    databaseReferenceW3B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3B = snapshot.value.toString();
        secW3B = snapshot.value;
      });
    });
    databaseReferenceW3C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3C = snapshot.value.toString();
        secW3C = snapshot.value;
      });
    });
    databaseReferenceW3D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3D = snapshot.value.toString();
        secW3D = snapshot.value;
      });
    });
    databaseReferenceW3E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3E = snapshot.value.toString();
        secW3E = snapshot.value;
      });
    });
    databaseReferenceW3F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3F = snapshot.value.toString();
        secW3F = snapshot.value;
      });
    });
    databaseReferenceW3G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3G = snapshot.value.toString();
        secW3G = snapshot.value;
      });
    });
    databaseReferenceW3H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3H = snapshot.value.toString();
        secW3H = snapshot.value;
      });
    });
    databaseReferenceW3I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3I = snapshot.value.toString();
        secW3I = snapshot.value;
      });
    });
    databaseReferenceW3J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW3J = snapshot.value.toString();
        secW3J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsW3 = secW3A +
          secW3B +
          secW3C +
          secW3D +
          secW3E +
          secW3F +
          secW3G +
          secW3H +
          secW3I +
          secW3J;
    });
    databaseReferenceW4A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4A = snapshot.value.toString();
        secW4A = snapshot.value;
      });
    });
    databaseReferenceW4B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4B = snapshot.value.toString();
        secW4B = snapshot.value;
      });
    });
    databaseReferenceW4C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4C = snapshot.value.toString();
        secW4C = snapshot.value;
      });
    });
    databaseReferenceW4D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4D = snapshot.value.toString();
        secW4D = snapshot.value;
      });
    });
    databaseReferenceW4E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4E = snapshot.value.toString();
        secW4E = snapshot.value;
      });
    });
    databaseReferenceW4F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4F = snapshot.value.toString();
        secW4F = snapshot.value;
      });
    });
    databaseReferenceW4G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4G = snapshot.value.toString();
        secW4G = snapshot.value;
      });
    });
    databaseReferenceW4H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4H = snapshot.value.toString();
        secW4H = snapshot.value;
      });
    });
    databaseReferenceW4I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4I = snapshot.value.toString();
        secW4I = snapshot.value;
      });
    });
    databaseReferenceW4J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW4J = snapshot.value.toString();
        secW4J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsW4 = secW4A +
          secW4B +
          secW4C +
          secW4D +
          secW4E +
          secW4F +
          secW4G +
          secW4H +
          secW4I +
          secW4J;
    });
    databaseReferenceW5A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5A = snapshot.value.toString();
        secW5A = snapshot.value;
      });
    });
    databaseReferenceW5B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5B = snapshot.value.toString();
        secW5B = snapshot.value;
      });
    });
    databaseReferenceW5C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5C = snapshot.value.toString();
        secW5C = snapshot.value;
      });
    });
    databaseReferenceW5D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5D = snapshot.value.toString();
        secW5D = snapshot.value;
      });
    });
    databaseReferenceW5E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5E = snapshot.value.toString();
        secW5E = snapshot.value;
      });
    });
    databaseReferenceW5F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5F = snapshot.value.toString();
        secW5F = snapshot.value;
      });
    });
    databaseReferenceW5G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5G = snapshot.value.toString();
        secW5G = snapshot.value;
      });
    });
    databaseReferenceW5H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5H = snapshot.value.toString();
        secW5H = snapshot.value;
      });
    });
    databaseReferenceW5I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5I = snapshot.value.toString();
        secW5I = snapshot.value;
      });
    });
    databaseReferenceW5J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionW5J = snapshot.value.toString();
        secW5J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsW5 = secW5A +
          secW5B +
          secW5C +
          secW5D +
          secW5E +
          secW5F +
          secW5G +
          secW5H +
          secW5I +
          secW5J;
    });
    setState(() {
      totalSpotsW = totalSpotsW1 +
          totalSpotsW2 +
          totalSpotsW3 +
          totalSpotsW4 +
          totalSpotsW5;
    });
    databaseReferenceS1A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1A = snapshot.value.toString();
        secS1A = snapshot.value;
      });
    });
    databaseReferenceS1B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1B = snapshot.value.toString();
        secS1B = snapshot.value;
      });
    });
    databaseReferenceS1C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1C = snapshot.value.toString();
        secS1C = snapshot.value;
      });
    });
    databaseReferenceS1D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1D = snapshot.value.toString();
        secS1D = snapshot.value;
      });
    });
    databaseReferenceS1E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1E = snapshot.value.toString();
        secS1E = snapshot.value;
      });
    });
    databaseReferenceS1F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1F = snapshot.value.toString();
        secS1F = snapshot.value;
      });
    });
    databaseReferenceS1G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1G = snapshot.value.toString();
        secS1G = snapshot.value;
      });
    });
    databaseReferenceS1H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1H = snapshot.value.toString();
        secS1H = snapshot.value;
      });
    });
    databaseReferenceS1I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1I = snapshot.value.toString();
        secS1I = snapshot.value;
      });
    });
    databaseReferenceS1J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS1J = snapshot.value.toString();
        secS1J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsS1 = secS1A +
          secS1B +
          secS1C +
          secS1D +
          secS1E +
          secS1F +
          secS1G +
          secS1H +
          secS1I +
          secS1J;
    });
    databaseReferenceS2A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2A = snapshot.value.toString();
        secS2A = snapshot.value;
      });
    });
    databaseReferenceS2B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2B = snapshot.value.toString();
        secS2B = snapshot.value;
      });
    });
    databaseReferenceS2C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2C = snapshot.value.toString();
        secS2C = snapshot.value;
      });
    });
    databaseReferenceS2D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2D = snapshot.value.toString();
        secS2D = snapshot.value;
      });
    });
    databaseReferenceS2E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2E = snapshot.value.toString();
        secS2E = snapshot.value;
      });
    });
    databaseReferenceS2F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2F = snapshot.value.toString();
        secS2F = snapshot.value;
      });
    });
    databaseReferenceS2G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2G = snapshot.value.toString();
        secS2G = snapshot.value;
      });
    });
    databaseReferenceS2H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2H = snapshot.value.toString();
        secS2H = snapshot.value;
      });
    });
    databaseReferenceS2I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2I = snapshot.value.toString();
        secS2I = snapshot.value;
      });
    });
    databaseReferenceS2J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS2J = snapshot.value.toString();
        secS2J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsS2 = secS2A +
          secS2B +
          secS2C +
          secS2D +
          secS2E +
          secS2F +
          secS2G +
          secS2H +
          secS2I +
          secS2J;
    });
    databaseReferenceS3A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3A = snapshot.value.toString();
        secS3A = snapshot.value;
      });
    });
    databaseReferenceS3B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3B = snapshot.value.toString();
        secS3B = snapshot.value;
      });
    });
    databaseReferenceS3C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3C = snapshot.value.toString();
        secS3C = snapshot.value;
      });
    });
    databaseReferenceS3D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3D = snapshot.value.toString();
        secS3D = snapshot.value;
      });
    });
    databaseReferenceS3E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3E = snapshot.value.toString();
        secS3E = snapshot.value;
      });
    });
    databaseReferenceS3F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3F = snapshot.value.toString();
        secS3F = snapshot.value;
      });
    });
    databaseReferenceS3G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3G = snapshot.value.toString();
        secS3G = snapshot.value;
      });
    });
    databaseReferenceS3H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3H = snapshot.value.toString();
        secS3H = snapshot.value;
      });
    });
    databaseReferenceS3I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3I = snapshot.value.toString();
        secS3I = snapshot.value;
      });
    });
    databaseReferenceS3J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS3J = snapshot.value.toString();
        secS3J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsS3 = secS3A +
          secS3B +
          secS3C +
          secS3D +
          secS3E +
          secS3F +
          secS3G +
          secS3H +
          secS3I +
          secS3J;
    });
    databaseReferenceS4A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4A = snapshot.value.toString();
        secS4A = snapshot.value;
      });
    });
    databaseReferenceS4B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4B = snapshot.value.toString();
        secS4B = snapshot.value;
      });
    });
    databaseReferenceS4C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4C = snapshot.value.toString();
        secS4C = snapshot.value;
      });
    });
    databaseReferenceS4D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4D = snapshot.value.toString();
        secS4D = snapshot.value;
      });
    });
    databaseReferenceS4E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4E = snapshot.value.toString();
        secS4E = snapshot.value;
      });
    });
    databaseReferenceS4F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4F = snapshot.value.toString();
        secS4F = snapshot.value;
      });
    });
    databaseReferenceS4G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4G = snapshot.value.toString();
        secS4G = snapshot.value;
      });
    });
    databaseReferenceS4H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4H = snapshot.value.toString();
        secS4H = snapshot.value;
      });
    });
    databaseReferenceS4I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4I = snapshot.value.toString();
        secS4I = snapshot.value;
      });
    });
    databaseReferenceS4J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS4J = snapshot.value.toString();
        secS4J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsS4 = secS4A +
          secS4B +
          secS4C +
          secS4D +
          secS4E +
          secS4F +
          secS4G +
          secS4H +
          secS4I +
          secS4J;
    });
    databaseReferenceS5A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5A = snapshot.value.toString();
        secS5A = snapshot.value;
      });
    });
    databaseReferenceS5B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5B = snapshot.value.toString();
        secS5B = snapshot.value;
      });
    });
    databaseReferenceS5C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5C = snapshot.value.toString();
        secS5C = snapshot.value;
      });
    });
    databaseReferenceS5D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5D = snapshot.value.toString();
        secS5D = snapshot.value;
      });
    });
    databaseReferenceS5E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5E = snapshot.value.toString();
        secS5E = snapshot.value;
      });
    });
    databaseReferenceS5F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5F = snapshot.value.toString();
        secS5F = snapshot.value;
      });
    });
    databaseReferenceS5G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5G = snapshot.value.toString();
        secS5G = snapshot.value;
      });
    });
    databaseReferenceS5H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5H = snapshot.value.toString();
        secS5H = snapshot.value;
      });
    });
    databaseReferenceS5I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5I = snapshot.value.toString();
        secS5I = snapshot.value;
      });
    });
    databaseReferenceS5J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionS5J = snapshot.value.toString();
        secS5J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsS5 = secS5A +
          secS5B +
          secS5C +
          secS5D +
          secS5E +
          secS5F +
          secS5G +
          secS5H +
          secS5I +
          secS5J;
    });
    setState(() {
      totalSpotsS = totalSpotsS1 +
          totalSpotsS2 +
          totalSpotsS3 +
          totalSpotsS4 +
          totalSpotsS5;
    });
    databaseReferenceN1A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1A = snapshot.value.toString();
        secN1A = snapshot.value;
      });
    });
    databaseReferenceN1B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1B = snapshot.value.toString();
        secN1B = snapshot.value;
      });
    });
    databaseReferenceN1C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1C = snapshot.value.toString();
        secN1C = snapshot.value;
      });
    });
    databaseReferenceN1D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1D = snapshot.value.toString();
        secN1D = snapshot.value;
      });
    });
    databaseReferenceN1E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1E = snapshot.value.toString();
        secN1E = snapshot.value;
      });
    });
    databaseReferenceN1F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1F = snapshot.value.toString();
        secN1F = snapshot.value;
      });
    });
    databaseReferenceN1G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1G = snapshot.value.toString();
        secN1G = snapshot.value;
      });
    });
    databaseReferenceN1H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1H = snapshot.value.toString();
        secN1H = snapshot.value;
      });
    });
    databaseReferenceN1I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1I = snapshot.value.toString();
        secN1I = snapshot.value;
      });
    });
    databaseReferenceN1J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN1J = snapshot.value.toString();
        secN1J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN1 = secN1A +
          secN1B +
          secN1C +
          secN1D +
          secN1E +
          secN1F +
          secN1G +
          secN1H +
          secN1I +
          secN1J;
    });
    databaseReferenceN2A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2A = snapshot.value.toString();
        secN2A = snapshot.value;
      });
    });
    databaseReferenceN2B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2B = snapshot.value.toString();
        secN2B = snapshot.value;
      });
    });
    databaseReferenceN2C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2C = snapshot.value.toString();
        secN2C = snapshot.value;
      });
    });
    databaseReferenceN2D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2D = snapshot.value.toString();
        secN2D = snapshot.value;
      });
    });
    databaseReferenceN2E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2E = snapshot.value.toString();
        secN2E = snapshot.value;
      });
    });
    databaseReferenceN2F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2F = snapshot.value.toString();
        secN2F = snapshot.value;
      });
    });
    databaseReferenceN2G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2G = snapshot.value.toString();
        secN2G = snapshot.value;
      });
    });
    databaseReferenceN2H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2H = snapshot.value.toString();
        secN2H = snapshot.value;
      });
    });
    databaseReferenceN2I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2I = snapshot.value.toString();
        secN2I = snapshot.value;
      });
    });
    databaseReferenceN2J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN2J = snapshot.value.toString();
        secN2J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN2 = secN2A +
          secN2B +
          secN2C +
          secN2D +
          secN2E +
          secN2F +
          secN2G +
          secN2H +
          secN2I +
          secN2J;
    });
    databaseReferenceN3A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3A = snapshot.value.toString();
        secN3A = snapshot.value;
      });
    });
    databaseReferenceN3B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3B = snapshot.value.toString();
        secN3B = snapshot.value;
      });
    });
    databaseReferenceN3C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3C = snapshot.value.toString();
        secN3C = snapshot.value;
      });
    });
    databaseReferenceN3D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3D = snapshot.value.toString();
        secN3D = snapshot.value;
      });
    });
    databaseReferenceN3E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3E = snapshot.value.toString();
        secN3E = snapshot.value;
      });
    });
    databaseReferenceN3F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3F = snapshot.value.toString();
        secN3F = snapshot.value;
      });
    });
    databaseReferenceN3G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3G = snapshot.value.toString();
        secN3G = snapshot.value;
      });
    });
    databaseReferenceN3H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3H = snapshot.value.toString();
        secN3H = snapshot.value;
      });
    });
    databaseReferenceN3I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3I = snapshot.value.toString();
        secN3I = snapshot.value;
      });
    });
    databaseReferenceN3J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN3J = snapshot.value.toString();
        secN3J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN3 = secN3A +
          secN3B +
          secN3C +
          secN3D +
          secN3E +
          secN3F +
          secN3G +
          secN3H +
          secN3I +
          secN3J;
    });
    databaseReferenceN4A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4A = snapshot.value.toString();
        secN4A = snapshot.value;
      });
    });
    databaseReferenceN4B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4B = snapshot.value.toString();
        secN4B = snapshot.value;
      });
    });
    databaseReferenceN4C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4C = snapshot.value.toString();
        secN4C = snapshot.value;
      });
    });
    databaseReferenceN4D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4D = snapshot.value.toString();
        secN4D = snapshot.value;
      });
    });
    databaseReferenceN4E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4E = snapshot.value.toString();
        secN4E = snapshot.value;
      });
    });
    databaseReferenceN4F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4F = snapshot.value.toString();
        secN4F = snapshot.value;
      });
    });
    databaseReferenceN4G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4G = snapshot.value.toString();
        secN4G = snapshot.value;
      });
    });
    databaseReferenceN4H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4H = snapshot.value.toString();
        secN4H = snapshot.value;
      });
    });
    databaseReferenceN4I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4I = snapshot.value.toString();
        secN4I = snapshot.value;
      });
    });
    databaseReferenceN4J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN4J = snapshot.value.toString();
        secN4J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN4 = secN4A +
          secN4B +
          secN4C +
          secN4D +
          secN4E +
          secN4F +
          secN4G +
          secN4H +
          secN4I +
          secN4J;
    });
    databaseReferenceN5A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5A = snapshot.value.toString();
        secN5A = snapshot.value;
      });
    });
    databaseReferenceN5B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5B = snapshot.value.toString();
        secN5B = snapshot.value;
      });
    });
    databaseReferenceN5C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5C = snapshot.value.toString();
        secN5C = snapshot.value;
      });
    });
    databaseReferenceN5D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5D = snapshot.value.toString();
        secN5D = snapshot.value;
      });
    });
    databaseReferenceN5E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5E = snapshot.value.toString();
        secN5E = snapshot.value;
      });
    });
    databaseReferenceN5F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5F = snapshot.value.toString();
        secN5F = snapshot.value;
      });
    });
    databaseReferenceN5G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5G = snapshot.value.toString();
        secN5G = snapshot.value;
      });
    });
    databaseReferenceN5H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5H = snapshot.value.toString();
        secN5H = snapshot.value;
      });
    });
    databaseReferenceN5I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5I = snapshot.value.toString();
        secN5I = snapshot.value;
      });
    });
    databaseReferenceN5J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN5J = snapshot.value.toString();
        secN5J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN5 = secN5A +
          secN5B +
          secN5C +
          secN5D +
          secN5E +
          secN5F +
          secN5G +
          secN5H +
          secN5I +
          secN5J;
    });
    databaseReferenceN6A.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6A = snapshot.value.toString();
        secN6A = snapshot.value;
      });
    });
    databaseReferenceN6B.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6B = snapshot.value.toString();
        secN6B = snapshot.value;
      });
    });
    databaseReferenceN6C.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6C = snapshot.value.toString();
        secN6C = snapshot.value;
      });
    });
    databaseReferenceN6D.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6D = snapshot.value.toString();
        secN6D = snapshot.value;
      });
    });
    databaseReferenceN6E.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6E = snapshot.value.toString();
        secN6E = snapshot.value;
      });
    });
    databaseReferenceN6F.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6F = snapshot.value.toString();
        secN6F = snapshot.value;
      });
    });
    databaseReferenceN6G.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6G = snapshot.value.toString();
        secN6G = snapshot.value;
      });
    });
    databaseReferenceN6H.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6H = snapshot.value.toString();
        secN6H = snapshot.value;
      });
    });
    databaseReferenceN6I.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6I = snapshot.value.toString();
        secN6I = snapshot.value;
      });
    });
    databaseReferenceN6J.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionN6J = snapshot.value.toString();
        secN6J = snapshot.value;
      });
    });
    setState(() {
      totalSpotsN6 = secN6A +
          secN6B +
          secN6C +
          secN6D +
          secN6E +
          secN6F +
          secN6G +
          secN6H +
          secN6I +
          secN6J;
    });
    setState(() {
      totalSpotsN = totalSpotsN1 +
          totalSpotsN2 +
          totalSpotsN3 +
          totalSpotsN4 +
          totalSpotsN5 +
          totalSpotsN6;
    });
  }

  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1),
        (Timer t) => {
              setState(() {
                _timeString = DateTime.now().toString();
                _date = _timeString.toString().split(" ")[0];
                _year = _date.split("-")[0];
                _month = _date.split("-")[1];
                _day = _date.split("-")[2];
                _hour = int.parse(_timeString
                    .toString()
                    .split(" ")[1]
                    .split(".")[0]
                    .split(":")[0]);
                if (_hour == 12) {
                  _hour = 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " PM";
                }
                if (_hour == 0 || _hour == 24) {
                  _hour = 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " AM";
                }
                if (_hour > 0 && _hour < 12) {
                  _hour = _hour;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " AM";
                }
                if (_hour > 12 && _hour < 24) {
                  _hour = _hour - 12;
                  _timeString = _hour.toString() +
                      ":" +
                      _timeString.toString().split(":")[1] +
                      " PM";
                }
                _weekDay = DateTime.now().weekday;
                if (_weekDay == 1) {
                  _dayOfWeek = "Monday";
                }

                if (_weekDay == 2) {
                  _dayOfWeek = "Tuesday";
                }

                if (_weekDay == 3) {
                  _dayOfWeek = "Wednesday";
                }

                if (_weekDay == 4) {
                  _dayOfWeek = "Thursday";
                }

                if (_weekDay == 5) {
                  _dayOfWeek = "Friday";
                }

                if (_weekDay == 6) {
                  _dayOfWeek = "Saturday";
                }

                if (_weekDay == 7) {
                  _dayOfWeek = "Sunday";
                }

                // _weekDay = d.weekday;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    readData();
    var nowDate = new DateTime.now();
    //var formatterDate = new DateFormat('MM/dd/yyyy');
    // String formattedDate = formatterDate.format(nowDate);
    var nowTime = new DateTime.now();
    // var formatterTime = new DateFormat('hh:mm:ss a');
    //String formattedTime = formatterTime.format(nowTime);

    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: CurvedNavigationBar(
              index: 1,
              color: Color(0xFFE8EAE6),
              buttonBackgroundColor: Color(0xFF019FBF),
              backgroundColor: Colors.white,
              items: [
                Icon(Icons.notifications, size: 30),
                Icon(Icons.home, size: 30),
                Icon(Icons.settings, size: 30),
              ],
              onTap: (index) {
                if (index == 0) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => AnnouncementsScreen()));
                } else if (index == 1) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                } else {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
                }
              },
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                            child: Text(
                              "Hi,",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 125.0, 0.0, 40.0),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Where will you park today',
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '?',
                                    style: TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 184.0,
                        height: 60.0,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                _month + "-" + _day + "-" + _year,
                                //formattedDate,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Current Day',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 184.0,
                        height: 60.0,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                _timeString,
                                //_hour.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Current Time',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NorthFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' North Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(width: 72.0),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: totalSpotsN.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' South Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 70.0,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: totalSpotsS.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => WestFloors()));
                    },
                    child: Container(
                      width: 400.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' West Garage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 82.0,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: new RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: totalSpotsW.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    height: 2.5,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
