import 'package:flutter/material.dart';
import 'custom_widgets/custom_image.dart';

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lil Sikh Children'),
        actions: [
          IconButton(
            onPressed: () {},
            icon:Image.asset('assets/images/message_icon.png'),
          ),
          IconButton(
            onPressed: () {},
            icon:Image.asset('assets/images/setting_icon.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 0.0, top: 30.0, right: 0.0, bottom: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/bhair', arguments: 'Text data for screen 1');
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/opt1.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/checknav', arguments: 'Text data for screen 2');
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/opt2.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/checknav', arguments: 'Text data for screen 3');
                          },
                          child: const CustomImage(
                            image: AssetImage('assets/images/option_3.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/checknav', arguments: 'Text data for screen 4');
                          },
                          child: const CustomImage(
                            image: AssetImage('assets/images/option_4.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/checknav', arguments: 'Text data for screen 5');
                          },
                          child: const CustomImage(
                            image: AssetImage('assets/images/option_5.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/checknav', arguments: 'Text data for screen 6');
                          },
                          child: const CustomImage(
                            image: AssetImage('assets/images/option_6.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

