import 'package:flutter/material.dart';

class Lang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/english_button.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/spanish_button.png'),
            ),
          ],
        ),
      ),
      );




  }
}