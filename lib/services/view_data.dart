import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key, required this.document, required this.id});

  final Map<String, dynamic> document;
  final String id;

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  TextEditingController _HabitName = TextEditingController();
  TextEditingController _HabitDescription = TextEditingController();

  String type = '';
  String Category = '';
  bool edit = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _HabitName = TextEditingController(text: widget.document['HabitName']);
    _HabitDescription =
        TextEditingController(text: widget.document['Description']);
    type = widget.document['Type'];
    Category = widget.document['Category'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF1d1e26), Color(0xFF252041)])),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                      size: 28,
                    )),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          FirebaseFirestore.instance
                              .collection("habits")
                              .doc(widget.id)
                              .delete()
                              .then((value) {Navigator.pop(context);});
                        },
                        icon: Icon(
                          Icons.delete,
                          color: edit ? Colors.red : Colors.white,
                          size: 28,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            edit = !edit;
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: edit ? Colors.green : Colors.white,
                          size: 28,
                        )),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    edit ? "Editing" : "View",
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
                    "YOur Habits",
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
                  edit ? button() : Container(),
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
        FirebaseFirestore.instance.collection("habits").doc(widget.id).update({
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
          'Update Habits',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }

  Widget typeSelect(String label, int color) {
    return InkWell(
      onTap: edit
          ? () {
              setState(() {
                type = label;
              });
            }
          : null,
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
      onTap: edit
          ? () {
              setState(() {
                Category = label;
              });
            }
          : null,
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
        enabled: edit,
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
        enabled: edit,
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
