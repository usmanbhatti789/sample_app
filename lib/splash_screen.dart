import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lil_sikh_app/base_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder:(context)=>BaseScreen() ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          height: double.infinity,
          child: Image(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
