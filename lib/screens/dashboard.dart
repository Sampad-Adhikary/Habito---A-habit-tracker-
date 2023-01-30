// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';
import 'package:habito/screens/settingsScreen.dart';
import 'package:habito/screens/analyticsScreen.dart';
import 'package:habito/screens/streaksScreen.dart';
import 'package:habito/screens/homeScreen.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboard();
}

class _MyDashboard extends State<MyDashboard> {
  int currentTab = 0;
  final List<Widget> screens = [Home(), Settings(), Analytics(), Streaks()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromRGBO(141, 74, 248, 100),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Routes.addHabitsScreen);
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 55,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Home();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home,
                                size: 35,
                                color: currentTab == 0
                                    ? Color.fromRGBO(141, 74, 248, 100)
                                    : Colors.grey[300]),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Color.fromRGBO(141, 74, 248, 100)
                                      : Colors.grey[300]),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 35,
                        onPressed: () {
                          setState(() {
                            currentScreen = Settings();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings,
                                size: 35,
                                color: currentTab == 1
                                    ? Color.fromRGBO(141, 74, 248, 100)
                                    : Colors.grey[300]),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Color.fromRGBO(141, 74, 248, 100)
                                      : Colors.grey[300]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Analytics();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.analytics,
                                size: 35,
                                color: currentTab == 2
                                    ? Color.fromRGBO(141, 74, 248, 100)
                                    : Colors.grey[300]),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Color.fromRGBO(141, 74, 248, 100)
                                      : Colors.grey[300]),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Streaks();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.whatshot,
                                size: 35,
                                color: currentTab == 3
                                    ? Color.fromRGBO(141, 74, 248, 100)
                                    : Colors.grey[300]),
                            Text(
                              'Streaks',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Color.fromRGBO(141, 74, 248, 100)
                                      : Colors.grey[300]),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
