// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';
import 'package:habito/screens/settingsScreen.dart';
import 'package:habito/screens/analyticsScreen.dart';
import 'package:habito/screens/streaksScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Home"),
      ),
    );
  }
}
