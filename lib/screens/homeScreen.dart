// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay? time = TimeOfDay.now();

  String greeting(time) {
    String greet = '';
    if (time > 3 && time < 12) {
      greet = "Good Morning";
    } else if (time >= 12 && time < 5) {
      greet = "Good Afternoon";
    } else if (time >= 5 && time < 10) {
      greet = "Good Evening";
    } else {
      greet = "Good Night";
    }
    return greet;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello, Sampad", style: TextStyle(fontSize: 21)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Good Morning",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                )),
          ],
        ),
      ),
    ));
  }
}
