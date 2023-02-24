// ignore: file_names
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Analytics', style: const TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26),
                child: Text(
                  '1. 10 Push Ups',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image.asset(
                    "assets/images/ana.png",
                  )),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26),
                child: Text(
                  '2. 10 min meditation',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image.asset(
                    "assets/images/ana.png",
                  )),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26),
                child: Text(
                  '3. Yoga session',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image.asset(
                    "assets/images/ana.png",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
