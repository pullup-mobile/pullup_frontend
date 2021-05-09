import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/home.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor1.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor2.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor3.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor4.dart';
import 'package:pullup/views/sections/south/sectionsSouthFloor5.dart';
import 'package:pullup/views/sections/west/sectionsWestFloor1.dart';
import 'package:pullup/views/sections/west/sectionsWestFloor2.dart';
import 'package:pullup/views/sections/west/sectionsWestFloor3.dart';
import 'package:pullup/views/sections/west/sectionsWestFloor4.dart';
import 'package:pullup/views/sections/west/sectionsWestFloor5.dart';
import 'package:pullup/views/settings.dart';

class SouthFloors extends StatefulWidget {
  @override
  _SouthFloorsState createState() => _SouthFloorsState();
}

class _SouthFloorsState extends State<SouthFloors> {
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
  final databaseReference1A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_A")
      .child("available_spots");
  final databaseReference1B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_B")
      .child("available_spots");
  final databaseReference1C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_C")
      .child("available_spots");
  final databaseReference1D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_D")
      .child("available_spots");
  final databaseReference1E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_E")
      .child("available_spots");
  final databaseReference1F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_F")
      .child("available_spots");
  final databaseReference1G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_G")
      .child("available_spots");
  final databaseReference1H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_H")
      .child("available_spots");
  final databaseReference1I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_I")
      .child("available_spots");
  final databaseReference1J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_1")
      .child("Section_J")
      .child("available_spots");
  String section1A = "";
  String section1B = "";
  String section1C = "";
  String section1D = "";
  String section1E = "";
  String section1F = "";
  String section1G = "";
  String section1H = "";
  String section1I = "";
  String section1J = "";
  int sec1A = 0;
  int sec1B = 0;
  int sec1C = 0;
  int sec1D = 0;
  int sec1E = 0;
  int sec1F = 0;
  int sec1G = 0;
  int sec1H = 0;
  int sec1I = 0;
  int sec1J = 0;
  int totalSpots1 = 0;
  final databaseReference2A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_A")
      .child("available_spots");
  final databaseReference2B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_B")
      .child("available_spots");
  final databaseReference2C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_C")
      .child("available_spots");
  final databaseReference2D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_D")
      .child("available_spots");
  final databaseReference2E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_E")
      .child("available_spots");
  final databaseReference2F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_F")
      .child("available_spots");
  final databaseReference2G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_G")
      .child("available_spots");
  final databaseReference2H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_H")
      .child("available_spots");
  final databaseReference2I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_I")
      .child("available_spots");
  final databaseReference2J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_2")
      .child("Section_J")
      .child("available_spots");
  String section2A = "";
  String section2B = "";
  String section2C = "";
  String section2D = "";
  String section2E = "";
  String section2F = "";
  String section2G = "";
  String section2H = "";
  String section2I = "";
  String section2J = "";
  int sec2A = 0;
  int sec2B = 0;
  int sec2C = 0;
  int sec2D = 0;
  int sec2E = 0;
  int sec2F = 0;
  int sec2G = 0;
  int sec2H = 0;
  int sec2I = 0;
  int sec2J = 0;
  int totalSpots2 = 0;
  final databaseReference3A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_A")
      .child("available_spots");
  final databaseReference3B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_B")
      .child("available_spots");
  final databaseReference3C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_C")
      .child("available_spots");
  final databaseReference3D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_D")
      .child("available_spots");
  final databaseReference3E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_E")
      .child("available_spots");
  final databaseReference3F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_F")
      .child("available_spots");
  final databaseReference3G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_G")
      .child("available_spots");
  final databaseReference3H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_H")
      .child("available_spots");
  final databaseReference3I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_I")
      .child("available_spots");
  final databaseReference3J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_3")
      .child("Section_J")
      .child("available_spots");
  String section3A = "";
  String section3B = "";
  String section3C = "";
  String section3D = "";
  String section3E = "";
  String section3F = "";
  String section3G = "";
  String section3H = "";
  String section3I = "";
  String section3J = "";
  int sec3A = 0;
  int sec3B = 0;
  int sec3C = 0;
  int sec3D = 0;
  int sec3E = 0;
  int sec3F = 0;
  int sec3G = 0;
  int sec3H = 0;
  int sec3I = 0;
  int sec3J = 0;
  int totalSpots3 = 0;
  final databaseReference4A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_A")
      .child("available_spots");
  final databaseReference4B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_B")
      .child("available_spots");
  final databaseReference4C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_C")
      .child("available_spots");
  final databaseReference4D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_D")
      .child("available_spots");
  final databaseReference4E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_E")
      .child("available_spots");
  final databaseReference4F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_F")
      .child("available_spots");
  final databaseReference4G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_G")
      .child("available_spots");
  final databaseReference4H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_H")
      .child("available_spots");
  final databaseReference4I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_I")
      .child("available_spots");
  final databaseReference4J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_4")
      .child("Section_J")
      .child("available_spots");
  String section4A = "";
  String section4B = "";
  String section4C = "";
  String section4D = "";
  String section4E = "";
  String section4F = "";
  String section4G = "";
  String section4H = "";
  String section4I = "";
  String section4J = "";
  int sec4A = 0;
  int sec4B = 0;
  int sec4C = 0;
  int sec4D = 0;
  int sec4E = 0;
  int sec4F = 0;
  int sec4G = 0;
  int sec4H = 0;
  int sec4I = 0;
  int sec4J = 0;
  int totalSpots4 = 0;
  final databaseReference5A = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_A")
      .child("available_spots");
  final databaseReference5B = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_B")
      .child("available_spots");
  final databaseReference5C = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_C")
      .child("available_spots");
  final databaseReference5D = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_D")
      .child("available_spots");
  final databaseReference5E = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_E")
      .child("available_spots");
  final databaseReference5F = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_F")
      .child("available_spots");
  final databaseReference5G = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_G")
      .child("available_spots");
  final databaseReference5H = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_H")
      .child("available_spots");
  final databaseReference5I = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_I")
      .child("available_spots");
  final databaseReference5J = FirebaseDatabase.instance
      .reference()
      .child("South_Garage_Floor_5")
      .child("Section_J")
      .child("available_spots");
  String section5A = "";
  String section5B = "";
  String section5C = "";
  String section5D = "";
  String section5E = "";
  String section5F = "";
  String section5G = "";
  String section5H = "";
  String section5I = "";
  String section5J = "";
  int sec5A = 0;
  int sec5B = 0;
  int sec5C = 0;
  int sec5D = 0;
  int sec5E = 0;
  int sec5F = 0;
  int sec5G = 0;
  int sec5H = 0;
  int sec5I = 0;
  int sec5J = 0;
  int totalSpots5 = 0;
  int totalSpots = 0;

  Future readData() async {
    databaseReference1A.once().then((DataSnapshot snapshot) {
      setState(() {
        section1A = snapshot.value.toString();
        sec1A = snapshot.value;
      });
    });
    databaseReference1B.once().then((DataSnapshot snapshot) {
      setState(() {
        section1B = snapshot.value.toString();
        sec1B = snapshot.value;
      });
    });
    databaseReference1C.once().then((DataSnapshot snapshot) {
      setState(() {
        section1C = snapshot.value.toString();
        sec1C = snapshot.value;
      });
    });
    databaseReference1D.once().then((DataSnapshot snapshot) {
      setState(() {
        section1D = snapshot.value.toString();
        sec1D = snapshot.value;
      });
    });
    databaseReference1E.once().then((DataSnapshot snapshot) {
      setState(() {
        section1E = snapshot.value.toString();
        sec1E = snapshot.value;
      });
    });
    databaseReference1F.once().then((DataSnapshot snapshot) {
      setState(() {
        section1F = snapshot.value.toString();
        sec1F = snapshot.value;
      });
    });
    databaseReference1G.once().then((DataSnapshot snapshot) {
      setState(() {
        section1G = snapshot.value.toString();
        sec1G = snapshot.value;
      });
    });
    databaseReference1H.once().then((DataSnapshot snapshot) {
      setState(() {
        section1H = snapshot.value.toString();
        sec1H = snapshot.value;
      });
    });
    databaseReference1I.once().then((DataSnapshot snapshot) {
      setState(() {
        section1I = snapshot.value.toString();
        sec1I = snapshot.value;
      });
    });
    databaseReference1J.once().then((DataSnapshot snapshot) {
      setState(() {
        section1J = snapshot.value.toString();
        sec1J = snapshot.value;
      });
    });
    setState(() {
      totalSpots1 = sec1A +
          sec1B +
          sec1C +
          sec1D +
          sec1E +
          sec1F +
          sec1G +
          sec1H +
          sec1I +
          sec1J;
    });
    databaseReference2A.once().then((DataSnapshot snapshot) {
      setState(() {
        section2A = snapshot.value.toString();
        sec2A = snapshot.value;
      });
    });
    databaseReference2B.once().then((DataSnapshot snapshot) {
      setState(() {
        section2B = snapshot.value.toString();
        sec2B = snapshot.value;
      });
    });
    databaseReference2C.once().then((DataSnapshot snapshot) {
      setState(() {
        section2C = snapshot.value.toString();
        sec2C = snapshot.value;
      });
    });
    databaseReference2D.once().then((DataSnapshot snapshot) {
      setState(() {
        section2D = snapshot.value.toString();
        sec2D = snapshot.value;
      });
    });
    databaseReference2E.once().then((DataSnapshot snapshot) {
      setState(() {
        section2E = snapshot.value.toString();
        sec2E = snapshot.value;
      });
    });
    databaseReference2F.once().then((DataSnapshot snapshot) {
      setState(() {
        section2F = snapshot.value.toString();
        sec2F = snapshot.value;
      });
    });
    databaseReference2G.once().then((DataSnapshot snapshot) {
      setState(() {
        section2G = snapshot.value.toString();
        sec2G = snapshot.value;
      });
    });
    databaseReference2H.once().then((DataSnapshot snapshot) {
      setState(() {
        section2H = snapshot.value.toString();
        sec2H = snapshot.value;
      });
    });
    databaseReference2I.once().then((DataSnapshot snapshot) {
      setState(() {
        section2I = snapshot.value.toString();
        sec2I = snapshot.value;
      });
    });
    databaseReference2J.once().then((DataSnapshot snapshot) {
      setState(() {
        section2J = snapshot.value.toString();
        sec2J = snapshot.value;
      });
    });
    setState(() {
      totalSpots2 = sec2A +
          sec2B +
          sec2C +
          sec2D +
          sec2E +
          sec2F +
          sec2G +
          sec2H +
          sec2I +
          sec2J;
    });
    databaseReference3A.once().then((DataSnapshot snapshot) {
      setState(() {
        section3A = snapshot.value.toString();
        sec3A = snapshot.value;
      });
    });
    databaseReference3B.once().then((DataSnapshot snapshot) {
      setState(() {
        section3B = snapshot.value.toString();
        sec3B = snapshot.value;
      });
    });
    databaseReference3C.once().then((DataSnapshot snapshot) {
      setState(() {
        section3C = snapshot.value.toString();
        sec3C = snapshot.value;
      });
    });
    databaseReference3D.once().then((DataSnapshot snapshot) {
      setState(() {
        section3D = snapshot.value.toString();
        sec3D = snapshot.value;
      });
    });
    databaseReference3E.once().then((DataSnapshot snapshot) {
      setState(() {
        section3E = snapshot.value.toString();
        sec3E = snapshot.value;
      });
    });
    databaseReference3F.once().then((DataSnapshot snapshot) {
      setState(() {
        section3F = snapshot.value.toString();
        sec3F = snapshot.value;
      });
    });
    databaseReference3G.once().then((DataSnapshot snapshot) {
      setState(() {
        section3G = snapshot.value.toString();
        sec3G = snapshot.value;
      });
    });
    databaseReference3H.once().then((DataSnapshot snapshot) {
      setState(() {
        section3H = snapshot.value.toString();
        sec3H = snapshot.value;
      });
    });
    databaseReference3I.once().then((DataSnapshot snapshot) {
      setState(() {
        section3I = snapshot.value.toString();
        sec3I = snapshot.value;
      });
    });
    databaseReference3J.once().then((DataSnapshot snapshot) {
      setState(() {
        section3J = snapshot.value.toString();
        sec3J = snapshot.value;
      });
    });
    setState(() {
      totalSpots3 = sec3A +
          sec3B +
          sec3C +
          sec3D +
          sec3E +
          sec3F +
          sec3G +
          sec3H +
          sec3I +
          sec3J;
    });
    databaseReference4A.once().then((DataSnapshot snapshot) {
      setState(() {
        section4A = snapshot.value.toString();
        sec4A = snapshot.value;
      });
    });
    databaseReference4B.once().then((DataSnapshot snapshot) {
      setState(() {
        section4B = snapshot.value.toString();
        sec4B = snapshot.value;
      });
    });
    databaseReference4C.once().then((DataSnapshot snapshot) {
      setState(() {
        section4C = snapshot.value.toString();
        sec4C = snapshot.value;
      });
    });
    databaseReference4D.once().then((DataSnapshot snapshot) {
      setState(() {
        section4D = snapshot.value.toString();
        sec4D = snapshot.value;
      });
    });
    databaseReference4E.once().then((DataSnapshot snapshot) {
      setState(() {
        section4E = snapshot.value.toString();
        sec4E = snapshot.value;
      });
    });
    databaseReference4F.once().then((DataSnapshot snapshot) {
      setState(() {
        section4F = snapshot.value.toString();
        sec4F = snapshot.value;
      });
    });
    databaseReference4G.once().then((DataSnapshot snapshot) {
      setState(() {
        section4G = snapshot.value.toString();
        sec4G = snapshot.value;
      });
    });
    databaseReference4H.once().then((DataSnapshot snapshot) {
      setState(() {
        section4H = snapshot.value.toString();
        sec4H = snapshot.value;
      });
    });
    databaseReference4I.once().then((DataSnapshot snapshot) {
      setState(() {
        section4I = snapshot.value.toString();
        sec4I = snapshot.value;
      });
    });
    databaseReference4J.once().then((DataSnapshot snapshot) {
      setState(() {
        section4J = snapshot.value.toString();
        sec4J = snapshot.value;
      });
    });
    setState(() {
      totalSpots4 = sec4A +
          sec4B +
          sec4C +
          sec4D +
          sec4E +
          sec4F +
          sec4G +
          sec4H +
          sec4I +
          sec4J;
    });
    databaseReference5A.once().then((DataSnapshot snapshot) {
      setState(() {
        section5A = snapshot.value.toString();
        sec5A = snapshot.value;
      });
    });
    databaseReference5B.once().then((DataSnapshot snapshot) {
      setState(() {
        section5B = snapshot.value.toString();
        sec5B = snapshot.value;
      });
    });
    databaseReference5C.once().then((DataSnapshot snapshot) {
      setState(() {
        section5C = snapshot.value.toString();
        sec5C = snapshot.value;
      });
    });
    databaseReference5D.once().then((DataSnapshot snapshot) {
      setState(() {
        section5D = snapshot.value.toString();
        sec5D = snapshot.value;
      });
    });
    databaseReference5E.once().then((DataSnapshot snapshot) {
      setState(() {
        section5E = snapshot.value.toString();
        sec5E = snapshot.value;
      });
    });
    databaseReference5F.once().then((DataSnapshot snapshot) {
      setState(() {
        section5F = snapshot.value.toString();
        sec5F = snapshot.value;
      });
    });
    databaseReference5G.once().then((DataSnapshot snapshot) {
      setState(() {
        section5G = snapshot.value.toString();
        sec5G = snapshot.value;
      });
    });
    databaseReference5H.once().then((DataSnapshot snapshot) {
      setState(() {
        section5H = snapshot.value.toString();
        sec5H = snapshot.value;
      });
    });
    databaseReference5I.once().then((DataSnapshot snapshot) {
      setState(() {
        section5I = snapshot.value.toString();
        sec5I = snapshot.value;
      });
    });
    databaseReference5J.once().then((DataSnapshot snapshot) {
      setState(() {
        section5J = snapshot.value.toString();
        sec5J = snapshot.value;
      });
    });
    setState(() {
      totalSpots5 = sec5A +
          sec5B +
          sec5C +
          sec5D +
          sec5E +
          sec5F +
          sec5G +
          sec5H +
          sec5I +
          sec5J;
    });
    setState(() {
      totalSpots =
          totalSpots1 + totalSpots2 + totalSpots3 + totalSpots4 + totalSpots5;
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
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
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
                          "South",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80.0,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 20.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Garage',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80.0,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80.0,
                                  color: Color(0xFF019FBF),
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
                    height: 50.0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            totalSpots.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            'Vacant Spaces',
                            style: TextStyle(
                              fontSize: 20.0,
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
                    height: 50.0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            _timeString,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            'Last Updated',
                            style: TextStyle(
                              fontSize: 20.0,
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
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor5()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Floor 5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor5()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          totalSpots5.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor4()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Floor 4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor4()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          totalSpots4.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor3()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Floor 3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor3()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          totalSpots3.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor2()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Floor 2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor2()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          totalSpots2.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor1()));
                    },
                    child: Container(
                      width: 293.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        border: Border.all(
                          color: Color(0xFF019FBF),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Floor 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SouthSectionsFloor1()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF019FBF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Text(
                          totalSpots1.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
