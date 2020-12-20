import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  AnimationController _lottieController;

  @override
  void initState() {
    super.initState();

    _lottieController = AnimationController(vsync: this)
      ..value = 0.5
      ..addListener(() {
        setState(() {});
      });

    Timer(
      Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
  }

  @override
  void dispose() {
    _lottieController.removeListener(() {
      setState(() {});
    });
    super.dispose();
    // _animationController.removeListener(() {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF331857),
              Color(0xFF000000),
            ],
            begin: Alignment.topRight,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Lottie.asset(
                'assets/lottie/42070-travel-is-fun.json',
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
