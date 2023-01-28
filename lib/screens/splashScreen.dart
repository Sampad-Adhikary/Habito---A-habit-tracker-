import 'package:flutter/material.dart';
import 'package:habito/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
  void initState() {
    // TODO: implement initState
    // super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 39, 36, 36),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            bottom: animate ? 200 : 0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1400),
              opacity: animate ? 1 : 0,
              child: Container(
                height: 400,
                width: 400,
                child: const Image(image: AssetImage('assets/habito-logo.png')),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushNamed(context, Routes.onboardingScreen1);
  }
}
