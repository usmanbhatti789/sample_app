import 'package:flutter/material.dart';


class AboutTravel extends StatelessWidget {
  final String? data;

  const AboutTravel({this.data});





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


        title: Text(data ?? "No data sent"),
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