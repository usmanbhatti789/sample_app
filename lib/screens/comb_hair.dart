import 'package:flutter/material.dart';


class CombHair extends StatelessWidget {
  final String? data;

  const CombHair({this.data});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:Image.asset('assets/images/back_icon.png'),
          ),
        ],





        title: Text(data ?? "no data received"),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
    );

  }
}