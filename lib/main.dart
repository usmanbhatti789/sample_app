import 'package:flutter/material.dart';
import 'package:lil_sikh_app/check_navigation.dart';
import 'package:lil_sikh_app/splash_screen.dart';
import 'package:lil_sikh_app/base_screen.dart';
import 'package:lil_sikh_app/brush_hair.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      routes: {
        '/base': (context) => BaseScreen(),
        '/checknav':(context) => CheckNav(),
        '/bhair':(context) => BrushHair(),
      },
    );
  }
}
