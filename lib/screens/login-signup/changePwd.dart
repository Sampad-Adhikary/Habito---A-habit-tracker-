// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChangePwd extends StatefulWidget {
  const ChangePwd({super.key});

  @override
  State<ChangePwd> createState() => _ChangePwdState();
}

class _ChangePwdState extends State<ChangePwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  body: Text("Change Password0"),
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            child: Container(
                child: Image.asset("assets/images/habito-logo.png"),
                margin: EdgeInsets.only(left: 30, right: 30, top: 20)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          child: Text(
            "Change Password",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            obscureText: true,
            cursorColor: Color.fromRGBO(141, 74, 248, 50),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_lock,
                  color: Color.fromRGBO(141, 74, 248, 50),
                ),
                hintText: "Current Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          child: TextField(
            style: TextStyle(fontSize: 20),
            obscureText: true,
            cursorColor: Color.fromRGBO(141, 74, 248, 50),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key,
                  color: Color.fromRGBO(141, 74, 248, 50),
                ),
                hintText: "New Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            obscureText: true,
            cursorColor: Color.fromRGBO(141, 74, 248, 50),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key_off_rounded,
                  color: Color.fromRGBO(141, 74, 248, 50),
                ),
                hintText: "Confirm Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            alignment: Alignment.center,
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                (Color.fromRGBO(141, 74, 248, 70)),
                (Color.fromRGBO(141, 74, 248, 30))
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2),
                )
              ],
            ),
            child: Text(
              "Reset",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
      ])),
    );
  }
}
