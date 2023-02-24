import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habito/constants/routes.dart';

import '../services/habits.dart';

class HabitTiles extends StatefulWidget {
  final String habitName;
  late DocumentReference _documentReference;
  late Future<DocumentSnapshot> _futureDocument;
  HabitTiles({Key? key, required this.habitName}) : super(key: key) {
    _documentReference =
        FirebaseFirestore.instance.collection('habits').doc(habitName);
    _futureDocument = _documentReference.get();
  }

  @override
  State<HabitTiles> createState() => HabitTilesState();
}

class HabitTilesState extends State<HabitTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      IconButton(
                        onPressed: () {
                          print(widget._documentReference);
                          FirebaseFirestore.instance
                              .collection('habits')
                              .doc(widget.habitName)
                              .delete();
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        ),
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
