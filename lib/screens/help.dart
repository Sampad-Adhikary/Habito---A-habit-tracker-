import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Help extends StatefulWidget {
  Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
              child: Text(
                  "For any help reach out to us at: habito1209@gmail.com")),
        ),
      ),
    );
  }
}
