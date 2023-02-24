// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  var arrData = [
    'Profile',
    'Change Password',
    'Theme',
    'Help',
    'Rate us',
    'Share App',
    'About App',
    'Logout',
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
          ),
          body: Container(
            child: ListView(
                children: arrData.map((value) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    if (value == 'Logout') {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.loginScreen, (route) => false);
                    } else if (value == 'Change Password') {
                      Navigator.pushNamed(context, Routes.changePwd);
                    } else if (value == 'Theme') {
                      Navigator.pushNamed(context, Routes.theme);
                    } else if (value == 'Help') {
                      Navigator.pushNamed(context, Routes.help);
                    } else if (value == 'Rate us') {
                      Navigator.pushNamed(context, Routes.rating);
                    } else if (value == 'Share App') {
                      Navigator.pushNamed(context, Routes.shareApp);
                    } else if (value == 'About App') {
                      Navigator.pushNamed(context, Routes.about);
                    } else if (value == 'Profile') {
                      Navigator.pushNamed(context, Routes.profileScreen);
                    }
                  },
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black26),
                    child: Text(value),
                  ),
                ),
              );
            }).toList()),
          )),
    );
  }
}
