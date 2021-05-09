import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pullup/views/announcements.dart';
import 'package:pullup/views/home.dart';
import 'package:pullup/views/settings.dart';

class NorthSectionsFloor3 extends StatefulWidget {
  @override
  _NorthSectionsFloor3State createState() => _NorthSectionsFloor3State();
}

class _NorthSectionsFloor3State extends State<NorthSectionsFloor3> {
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

  final databaseReferenceA = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_A")
      .child("available_spots");
  final databaseReferenceB = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_B")
      .child("available_spots");
  final databaseReferenceC = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_C")
      .child("available_spots");
  final databaseReferenceD = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_D")
      .child("available_spots");
  final databaseReferenceE = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_E")
      .child("available_spots");
  final databaseReferenceF = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_F")
      .child("available_spots");
  final databaseReferenceG = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_G")
      .child("available_spots");
  final databaseReferenceH = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_H")
      .child("available_spots");
  final databaseReferenceI = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_I")
      .child("available_spots");
  final databaseReferenceJ = FirebaseDatabase.instance
      .reference()
      .child("North_Garage_Floor_3")
      .child("Section_J")
      .child("available_spots");
  String sectionA = "";
  String sectionB = "";
  String sectionC = "";
  String sectionD = "";
  String sectionE = "";
  String sectionF = "";
  String sectionG = "";
  String sectionH = "";
  String sectionI = "";
  String sectionJ = "";
  int secA = 0;
  int secB = 0;
  int secC = 0;
  int secD = 0;
  int secE = 0;
  int secF = 0;
  int secG = 0;
  int secJ = 0;
  int secH = 0;
  int secI = 0;
  int totalSpots = 0;

  Future readData() async {
    databaseReferenceA.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionA = snapshot.value.toString();
        secA = snapshot.value;
      });
    });
    databaseReferenceB.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionB = snapshot.value.toString();
        secB = snapshot.value;
      });
    });
    databaseReferenceC.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionC = snapshot.value.toString();
        secC = snapshot.value;
      });
    });
    databaseReferenceD.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionD = snapshot.value.toString();
        secD = snapshot.value;
      });
    });
    databaseReferenceE.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionE = snapshot.value.toString();
        secE = snapshot.value;
      });
    });
    databaseReferenceF.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionF = snapshot.value.toString();
        secF = snapshot.value;
      });
    });
    databaseReferenceG.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionG = snapshot.value.toString();
        secG = snapshot.value;
      });
    });
    databaseReferenceH.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionH = snapshot.value.toString();
        secH = snapshot.value;
      });
    });
    databaseReferenceI.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionI = snapshot.value.toString();
        secI = snapshot.value;
      });
    });
    databaseReferenceJ.once().then((DataSnapshot snapshot) {
      setState(() {
        sectionJ = snapshot.value.toString();
        secJ = snapshot.value;
      });
    });
    setState(() {
      totalSpots =
          secA + secB + secC + secD + secE + secF + secG + secH + secI + secJ;
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
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AnnouncementsScreen()));
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
        child: Column(children: [
          Container(
              child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 75.0, 0.0, 0.0),
                  child: Text(
                    "North",
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
                  padding: const EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 20.0),
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
          )),
          // SizedBox(
          //   height: 10.0,
          // ),
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
                        'Floor 3 Vacancy',
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
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section A',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionA,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section B',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionB,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section C',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionC,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section D',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionD,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section E',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionE,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section F',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionF,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section G',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionG,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section H',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionH,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionI,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22.0,
              ),
              Container(
                width: 125.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Color(0xFF019FBF),
                  border: Border.all(
                    color: Color(0xFF019FBF),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Section J',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                width: 70.0,
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
                    sectionJ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
