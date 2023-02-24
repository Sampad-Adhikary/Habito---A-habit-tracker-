import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Streaks extends StatelessWidget {
  const Streaks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Streaks',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
