import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddHabits extends StatefulWidget {
  const AddHabits({super.key});

  @override
  State<AddHabits> createState() => _AddHabitsState();
}

class _AddHabitsState extends State<AddHabits> {
  TextEditingController _HabitName = TextEditingController();
  TextEditingController _HabitDescription = TextEditingController();

  String type = '';
  String Category = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                  size: 28,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create",
                    style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "New Habits",
                    style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  label("Habit Name"),
                  SizedBox(
                    height: 12,
                  ),
                  title(),
                  SizedBox(
                    height: 30,
                  ),
                  label('Habit Type'),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      typeSelect('Important', 0xff2664fa),
                      SizedBox(
                        width: 20,
                      ),
                      typeSelect('Planned', 0xff2bc8d9),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  label('Description'),
                  SizedBox(
                    height: 12,
                  ),
                  description(),
                  SizedBox(
                    height: 25,
                  ),
                  label('Category'),
                  SizedBox(
                    height: 12,
                  ),
                  Wrap(
                    children: [
                      categorySelect('Food', 0xffff6d6e),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Workout', 0xfff29732),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Work', 0xff6557ff),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Coding', 0xff234ebd),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Run', 0xff2bc8d9),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Drink', 0xff2bc8d1),
                      SizedBox(
                        width: 20,
                      ),
                      categorySelect('Write', 0xff2bc8d1),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  button(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget button() {
    return InkWell(
      onTap: () {
        FirebaseFirestore.instance.collection("habits").add({
          'HabitName': _HabitName.text,
          'Description': _HabitDescription.text,
          'Type': type,
          'Category': Category
        });
        Navigator.pop(context);
      },
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Color(0xff8a32f1), Color(0xffad32f9)],
          ),
        ),
        child: Center(
            child: Text(
          'Add Habits',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }

  Widget typeSelect(String label, int color) {
    return InkWell(
      onTap: () {
        setState(() {
          type = label;
        });
      },
      child: Chip(
        backgroundColor: type == label ? Colors.white : Color(color),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: Text(
          label,
          style: TextStyle(
              color: type == label ? Colors.black : Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        labelPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 3.8),
      ),
    );
  }

  Widget categorySelect(String label, int color) {
    return InkWell(
      onTap: () {
        setState(() {
          Category = label;
        });
      },
      child: Chip(
        backgroundColor: Category == label ? Colors.white : Color(color),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: Text(
          label,
          style: TextStyle(
              color: Category == label ? Colors.black : Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        labelPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 3.8),
      ),
    );
  }

  Widget title() {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0Xff2a2e3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: _HabitName,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Habit',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(left: 20, right: 20),
        ),
      ),
    );
  }

  Widget label(String label) {
    return Text(
      label,
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16.5,
          letterSpacing: 0.2),
    );
  }

  Widget description() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0Xff2a2e3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: _HabitDescription,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Habit Description',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(left: 20, right: 20),
        ),
      ),
    );
  }
}
