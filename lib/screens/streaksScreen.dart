// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Streaks extends StatefulWidget {
  const Streaks({super.key});

  @override
  State<Streaks> createState() => _StreaksState();
}

class _StreaksState extends State<Streaks> {
  DateTime currDay = DateTime.now();
  void _onDaySelected(DateTime day, DatetimefocusedDay) {
    setState(() {
      currDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Streaks',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: calendar()),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: double.maxFinite,
                child: streakData(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget streakData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          height: 120,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '10 Push Ups',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current Streak: 10',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Best Streak: 21",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 120,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '10 Push Ups',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Current Streak: 10',
                    style: const TextStyle(fontSize: 18),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Best Streak: 21",
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 120,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '10 Push Ups',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current Streak: 10',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Best Streak: 21",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget calendar() {
    return Column(
      children: [
        TableCalendar(
            focusedDay: currDay,
            locale: "en_US",
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, currDay),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 10, 16)),
      ],
    );
  }
}
