// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Image.asset("assets/images/habito-logo.png")),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            cursorColor: Color.fromARGB(255, 11, 93, 217),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person_add,
                  color: Color.fromARGB(255, 11, 93, 217),
                ),
                hintText: "Full Name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            cursorColor: Color.fromARGB(255, 11, 93, 217),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 11, 93, 217),
                ),
                hintText: "Enter Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            cursorColor: Color.fromARGB(255, 11, 93, 217),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.phone_android,
                  color: Color.fromARGB(255, 11, 93, 217),
                ),
                hintText: "Phone Number",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            obscureText: true,
            cursorColor: Color.fromARGB(255, 11, 93, 217),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key,
                  color: Color.fromARGB(255, 11, 93, 217),
                ),
                hintText: "Enter Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(fontSize: 20),
            obscureText: true,
            cursorColor: Color.fromARGB(255, 11, 93, 217),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_lock,
                  color: Color.fromARGB(255, 11, 93, 217),
                ),
                hintText: "Confirm Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        GestureDetector(
          onTap: () => {Navigator.pushNamed(context, Routes.otpScreen)},
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            alignment: Alignment.center,
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                (Color.fromARGB(255, 160, 26, 198)),
                (Color.fromARGB(255, 52, 106, 232))
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2),
                )
              ],
            ),
            child: Text(
              "SIGN UP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "or signup with",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: Image.asset(
                        "assets/images/facebook.png",
                        height: 60,
                        width: 60,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 50,
                        width: 50,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: Image.asset(
                        "assets/images/twitter.png",
                        height: 60,
                        width: 60,
                      )),
                ],
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
