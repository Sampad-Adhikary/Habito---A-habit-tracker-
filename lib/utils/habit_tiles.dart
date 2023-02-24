import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HabitTiles extends StatefulWidget {
  final String habitName;
  const HabitTiles({Key? key, required this.habitName}) : super(key: key);

  @override
  State<HabitTiles> createState() => HabitTilesState();
}

class HabitTilesState extends State<HabitTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 20),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.habitName,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Checkbox(
                      //   value: isChecked,
                      //   activeColor: Color.fromRGBO(141, 74, 248, 50),
                      //   tristate: true,
                      //   onChanged: (newBool) {
                      //     setState(() {
                      //       isChecked = newBool;
                      //     });
                      //   },
                      // ),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
