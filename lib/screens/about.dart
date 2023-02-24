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
    return SafeArea(
        child: Scaffold(
      body: Text("Version 1.0.0"),
    ));
  }
}
