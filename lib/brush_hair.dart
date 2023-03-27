import 'package:flutter/material.dart';

class BrushHair extends StatelessWidget {
  const BrushHair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    String textData = modalRoute?.settings.arguments as String? ?? 'Default title';
    return Scaffold(
      appBar: AppBar(
        title: Text(textData),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0 || index == 2) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                  child: Stack(
                    children: [
                      Image.network(
                        'https://source.unsplash.com/random/800x400',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Center(
                        child: Text(
                          'Card ${index == 0 ? 1 : 3}',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Image.network(
                'https://source.unsplash.com/random/800x400',
                width: double.infinity, // Fit the image to screen width
                fit: BoxFit.cover,
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}