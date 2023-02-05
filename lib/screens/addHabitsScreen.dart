import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:habito/services/habits.dart';
import 'package:habito/services/lists.dart';
import 'package:habito/services/view_data.dart';


class HabitList extends StatefulWidget {
  const HabitList({super.key});

  @override
  State<HabitList> createState() => _HabitListState();
}

class _HabitListState extends State<HabitList> {
  final CollectionReference _habitsList =
      FirebaseFirestore.instance.collection('habits');
      List<Select> selected=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Today\'s Habits',
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/face.jpg'),
          ),
          SizedBox(
            width: 25,
          )
        ],
        bottom: PreferredSize(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                'Monday 21',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(35),
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 55,
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: TextButton(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add habits',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.add_outlined)
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AddHabits()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: StreamBuilder(
                stream: _habitsList.snapshots(),
                builder:
                    (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  if (!streamSnapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                      itemCount: streamSnapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        IconData iconData;
                        Color iconColor=Colors.black ;
                        // final DocumentSnapshot documentSnapshot =
                        //     streamSnapshot.data!.docs[index];
                        Map<String, dynamic> documentSnapshot =
                            streamSnapshot.data!.docs[index].data()
                                as Map<String, dynamic>;

                        switch (documentSnapshot['Category']) {
                          case "Food":
                            iconData = Icons.restaurant_menu;
                            iconColor:
                            Colors.red;
                            break;
                          case "Work":
                            iconData = Icons.business_center;
                            iconColor:Colors.red;
                            break;
                          case "Drink":
                            iconData = Icons.local_drink;
                            iconColor:
                            Colors.red;
                            break;
                          case "Workout":
                            iconData = Icons.sports_gymnastics;
                            iconColor:
                            Colors.red;
                            break;
                          case "Coding":
                            iconData = Icons.laptop_windows;
                            iconColor:
                            Colors.red;
                            break;
                          case "Run":
                            iconData = Icons.directions_run;
                            iconColor:
                            Colors.red;
                            break;
                            case "Write":
                            iconData = Icons.draw;
                            iconColor:
                            Colors.red;
                            break;
                          default:
                            iconData = Icons.abc;
                            iconColor:
                            Colors.red;
                        }
                        selected.add(Select(id:streamSnapshot.data!.docs[index].id , checkValue:false ));
                        return InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:(builder)=>ViewData(
                              document: documentSnapshot,
                              id:streamSnapshot.data!.docs[index].id
                            )));
                          },

                          child: Habitsitems(
                            title: documentSnapshot['HabitName'],
                            description: documentSnapshot['Description'],
                            check: selected[index].checkValue,
                            iconColor: iconColor,
                            iconBG: Colors.white,
                            iconData: iconData,
                            index: index,
                            onChange: onChange,
                          ),
                        );
                      });
                }),
          ),
        ],
      ),
    );
  }
  void onChange(int index)
  {
    setState(() {
      selected[index].checkValue=!selected[index].checkValue;
    });
  }
}


class Select
{
  String id ;
  bool checkValue=false;
  Select({required this.id, required this.checkValue});
}