import 'package:flutter/material.dart';


class Eat extends StatelessWidget {

  final String? data;

  const Eat({this.data});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(data ?? "no data received"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:Image.asset('assets/images/back_icon.png'),
          ),
        ],




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