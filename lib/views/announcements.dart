import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:pullup/views/home.dart';
import 'package:pullup/views/settings.dart';

class AnnouncementsScreen extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<AnnouncementsScreen> {
  String selected = "first";
  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.contains(MaterialState.hovered)) {
    //     return Colors.redAccent;
    //   }
    //   return Color(0xFF019FBF);
    // }

    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: CurvedNavigationBar(
              index: 0,
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
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 75, 0, 45),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "News",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: ".",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                                color: Color(0xFF019FBF),
                              ),
                            ),
                          ]),
                        ))),
                Container(
                    height: 150,
                    width: 390,
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: new RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "5/1/21: 5am - 10am",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                height: 2,
                                fontSize: 30,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "        West Garage will be closed.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 28,
                                color: Colors.black54,
                              ))
                        ])),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF019FBF),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 5))
                      ],
                    )),
                new Container(height: 20),
                Container(
                    height: 150,
                    width: 390,
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                    child: new RichText(
                        textAlign: TextAlign.center,
                        //strutStyle: StrutStyle(height: 6),
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "5/13/21: 8am - 5pm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                height: 2,
                                fontSize: 30,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "       North Garage will be closed.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 28,
                                color: Colors.black54,
                              ))
                        ])),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF019FBF),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 5))
                      ],
                    )),
                new Container(height: 20),
                Container(
                    height: 150,
                    width: 390,
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: new RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "5/26/21: 9am - 5pm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 30,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text:
                                  "      South Garage will be open for graduation.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 28,
                                color: Colors.black54,
                              ))
                        ])),
                    decoration: BoxDecoration(
                      color: Color(0xFF019FBF),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 5))
                      ],
                    )),
              ],
            ))));
  }
}
