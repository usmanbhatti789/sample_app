import 'package:flutter/material.dart';


class WakeUp extends StatelessWidget {
  final String? data;

 const WakeUp({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
          IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
      icon:Image.asset('assets/images/back_icon.png'),
    ),
        ],
        title:Text(data ?? 'No data received'),
      ),
      body: Center(
        child: Text('Hello, World! Data: ${data ?? 'No data received'}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}