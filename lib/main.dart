// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:habito/screens/dashboard.dart';

//importing screens
import 'constants/routes.dart';
import 'screens/splashScreen.dart';
import 'screens/onboarding/onboardingScreen1.dart';
import 'screens/onboarding/onboardingScreen2.dart';
import 'screens/onboarding/onboardingScreen3.dart';
import 'screens/login-signup/loginScreen.dart';
import 'screens/login-signup/signUpScreen.dart';
import 'screens/login-signup/otpScreen.dart';
import 'screens/addHabitsScreen.dart';
import 'screens/analyticsScreen.dart';
import 'screens/homeScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/settingsScreen.dart';
import 'screens/streaksScreen.dart';

void main() {
  runApp(const Habito());
}

class Habito extends StatelessWidget {
  const Habito({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Habito - A habit tracker app',
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          "/": (context) => const SplashScreen(),
          Routes.onboardingScreen1: (context) => const Onboarding1(),
          // Routes.onboardingScreen2: (context) => Onboarding1(),
          // Routes.onboardingScreen3: (context) => Onboarding1(),
          // Routes.loginScreen: (context) => Login(),
          // Routes.otpScreen: (context) => Otp(),
          // Routes.signUpSCreen: (context) => Signup(),
          Routes.homeScreen: (context) => const Home(),
          Routes.addHabitsScreen: (context) => const Habits(),
          Routes.settingsScreen: (context) => const Settings(),
          // Routes.profileScreen: (context) => Profile(),
          Routes.analyticsScreen: (context) => const Analytics(),
          Routes.streaksScreen: (context) => const Streaks(),
          Routes.appBar: (context) => const MyDashboard(),
        });
  }
}
