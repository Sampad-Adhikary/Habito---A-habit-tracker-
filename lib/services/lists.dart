import 'package:flutter/material.dart';

class Habitsitems extends StatelessWidget {
  const Habitsitems(
      {super.key,
      required this.title,
      required this.iconData,
      required this.iconColor,
      required this.description,
      required this.check,
      required this.iconBG,
      required this.onChange,
      required this.index});

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
      margin: EdgeInsets.only(top: 5),
       decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(20),
                ),
      child: Theme(
        child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            subtitle: Text(
              description,
              style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            leading: Container(
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white)),
              child: Icon(
                          iconData,
                          color: iconColor,
                          size: 40,
                          
                        ),
            ) ,
            trailing:  Theme(
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
            // primarySwatch: Colors.blue,
            unselectedWidgetColor: Colors.white,
          ),
        ),
             ),
              data: ThemeData(
            // primarySwatch: Colors.blue,
            unselectedWidgetColor: Colors.white,
    //       ),
      ),
    ));

  }
}
