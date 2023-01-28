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
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, Routes.addHabitsScreen);
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 45,
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
                                color: currentTab == 0
                                    ? Colors.blue
                                    : Colors.grey),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
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
                                color: currentTab == 1
                                    ? Colors.blue
                                    : Colors.grey),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey),
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
                                color: currentTab == 2
                                    ? Colors.blue
                                    : Colors.grey),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey),
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
                                color: currentTab == 3
                                    ? Colors.blue
                                    : Colors.grey),
                            Text(
                              'Streaks',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey),
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
