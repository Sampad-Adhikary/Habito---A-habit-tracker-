import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ratings"),
        ),
        body: Container(
          child: Text("Plase Rate Us"),
        ),
      ),
    );
  }
}
