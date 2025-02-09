import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      context.go('/welcome');
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
