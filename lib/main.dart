import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Colors.pinkAccent,
          splashIconSize: 300,
          pageTransitionType: PageTransitionType.leftToRight,
          //splashTransition: SplashTransition.decoratedBoxTransition,
          splash: Column(
            children: [
              Image.asset(
                "images/hm.png",
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                "Hamaki's Songs",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          nextScreen: home(),
        ));
      }
  }
