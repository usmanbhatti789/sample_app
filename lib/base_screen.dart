import 'package:flutter/material.dart';
import 'package:lil_sikh_app/screens/about_travel.dart';
import 'package:lil_sikh_app/screens/comb_hair.dart';
import 'package:lil_sikh_app/screens/eat.dart';
import 'package:lil_sikh_app/screens/feeling_scared.dart';
import 'package:lil_sikh_app/screens/take_bath.dart';
import 'package:lil_sikh_app/screens/wake_up.dart';
import 'package:lil_sikh_app/lang.dart';
import 'custom_widgets/custom_image.dart';

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String data;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lil Sikh Children'),
        actions: [
          IconButton(
            onPressed: () {},
            icon:Image.asset('assets/images/message_icon.png'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Lang()) );
            },
            icon:Image.asset('assets/images/setting_icon.png'),
          ),
          IconButton(
            onPressed: () {

            },
            icon:Image.asset('assets/images/back_icon.png'),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>WakeUp(data:"When we wake up")) );
                      },
                      child: const CustomImage(
                        image: AssetImage('assets/images/opt1.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>TakeBath(data:"When we Take a bath")) );
                      },
                      child: const CustomImage(
                        image: AssetImage('assets/images/opt2.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>CombHair(data:"When we Comb Our Hair")) );
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/option_3.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Eat(data:"Before we eat")) );
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/option_4.png'),
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
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>FeelingScared(data:"Feeling Scared")) );
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/option_5.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutTravel(data:"when we are about to travel")) );
                        },
                        child: const CustomImage(
                          image: AssetImage('assets/images/option_6.png'),
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

