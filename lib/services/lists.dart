// import 'package:flutter/material.dart';

// List habitList = [
//   [
//     false, //If it is complete or not
//     "Drink Water", //The title of the habit
//     "Drink At Least 8 Cups Of Water", //The subtitle of the habit,
//     Icon(Icons.local_drink) //The icon of the habit
//   ],
//   [
//     false, //If it is complete or not
//     "Read", //The title of the habit
//     "Read at least 25 pages", //The subtitle of the habit,
//     Icon(Icons.book) //The icon of the habit
//   ],
//   [
//     false, //If it is complete or not
//     "Exercise", //The title of the habit
//     "Go to the gym or do cardio", //The subtitle of the habit,
//     Icon(Icons.sports_gymnastics), //The icon of the habit
//   ],
//   [
//     false, //If it is complete or not
//     "Learn Spanish", //The title of the habit
//     "Study Spanish for 20 min", //The subtitle of the habit,
//     Icon(Icons.language), //The icon of the habit
//   ],
//   [
//     false, //If it is complete or not
//     "Code", //The title of the habit
//     "Work on coding project", //The subtitle of the habit,
//     Icon(Icons.computer), //The icon of the habit
//   ],
//   [
//     false, //If it is complete or not
//     "Journal", //The title of the habit
//     "Write Down 3 things that you appreciate", //The subtitle of the habit,
//     Icon(Icons.edit), //The icon of the habit
//   ],
// ];

// import 'dart:html';

import 'package:flutter/material.dart';

class Habitsitems extends StatelessWidget {
  const Habitsitems(
      {super.key,
      required this.title,
      required this.iconData,
      required this.iconColor,
      required this.description,
      required this.check, 
      required this.iconBG, required this.onChange, required this.index});

  //we need to assign all value dynamically

  final String title;
  final IconData iconData;
  final Color iconColor;
  final String description;
  final bool check;
  final Color iconBG;
  final int index;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        Theme(
          child: Transform.scale(
            scale: 1.5,
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              activeColor: Color(0xff6cf8a9),
              checkColor: Color(0xff0e3e26),
              value: check,
              onChanged: (bool? value) {onChange(index);},
            ),
          ),
          data: ThemeData(
            primarySwatch: Colors.blue,
            unselectedWidgetColor: Color(0xff5e616a),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: Color(0xff2a2e3d),
              child: Row(children: [
                SizedBox(
                  width: 15,
                ),
                
                Container(
                  width:225.7,
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        
                        title,
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                            
                      ),
                      Expanded(
                        child: Text(
                          description,
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Container(
                  height: 33,
                  width: 36,
                  decoration: BoxDecoration(
                      color: iconBG,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    iconData,
                    color: iconColor,
                  ),
                ),
                
              ]),
            ),
          ),
        )
      ]),
    );
  }
}
