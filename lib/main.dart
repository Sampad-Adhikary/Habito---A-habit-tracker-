// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habito/screens/about.dart';
import 'package:habito/screens/dashboard.dart';
import 'package:habito/screens/help.dart';
import 'package:habito/screens/login-signup/changePwd.dart';
import 'package:habito/screens/login-signup/resetPassword.dart';
import 'package:habito/screens/onboarding/content_model.dart';
import 'package:habito/services/lists.dart';

//importing screens
import 'constants/routes.dart';
import 'screens/splashScreen.dart';
import 'screens/onboarding/onboardingScreen1.dart';
import 'screens/login-signup/loginScreen.dart';
import 'screens/login-signup/signUpScreen.dart';
import 'screens/login-signup/otpScreen.dart';
import 'screens/addHabitsScreen.dart';
import 'screens/analyticsScreen.dart';
import 'screens/homeScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/settingsScreen.dart';
import 'screens/streaksScreen.dart';
import 'package:habito/screens/theme.dart';
import 'package:habito/screens/rating.dart';
import 'package:habito/screens/shareApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Habito());
}

class Habito extends StatelessWidget {
  const Habito({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Habito - A habit tracker app',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Nunito',
          textTheme: const TextTheme(
            displayLarge:
                TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(
              fontSize: 36.0,
            ),
            bodyMedium: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          "/": (context) => const SplashScreen(),
          Routes.onboardingScreen1: (context) => Onboarding(),
          Routes.loginScreen: (context) => Login(),
          Routes.otpScreen: (context) => Otp(),
          Routes.signUpSCreen: (context) => Signup(),
          Routes.homeScreen: (context) => const Home(),
          Routes.addHabitsScreen: (context) => HabitList(),
          Routes.settingsScreen: (context) => Settings(),
          Routes.profileScreen: (context) => Profile(),
          Routes.analyticsScreen: (context) => const Analytics(),
          Routes.streaksScreen: (context) => const Streaks(),
          Routes.appBar: (context) => const MyDashboard(),
          Routes.changePwd: (context) => ChangePwd(),
          Routes.theme: (context) => AppTheme(),
          Routes.help: (contents) => Help(),
          Routes.rating: (context) => Ratings(),
          Routes.shareApp: (context) => Share(),
          Routes.about: (context) => About(),
        });
  }
}
