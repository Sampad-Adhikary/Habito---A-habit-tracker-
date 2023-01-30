// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TimeOfDay? time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    String greeting(givenHour) {
      String local_greet = "";
      if (givenHour <= 12) {
        local_greet = "Good Morning";
      } else if ((givenHour > 12) && (givenHour <= 16)) {
        local_greet = "Good Afternoon";
      } else if ((givenHour > 16) && (givenHour <= 20)) {
        local_greet = "Good Evening";
      } else {
        local_greet = "Good Night";
      }
      return local_greet;
    }

    var time = DateTime.now();
    var hour = time.hour.toInt();
    // var hour = 11;
    print(hour.runtimeType);
    String greet = greeting(hour);

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
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                )
              ],
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '$greet',
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
