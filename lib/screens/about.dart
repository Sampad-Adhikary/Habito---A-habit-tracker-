import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
          child: Text(
        "Version 1.0.0",
        style: TextStyle(fontSize: 20),
      )),
    ));
  }
}
