import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jesse_app/welcome_screen.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  Color textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Started',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://img4.goodfon.com/wallpaper/nbig/8/4e/bodibilder-press-abs-muscle-myshtsy-poza-bodybuilder-vorkaut.jpg'),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeadingText(),
              const SizedBox(height: 100),
              GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Text(' MEESTER YOUR LIFE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              )),
          Text('MEMBERS ONLY',
              style: TextStyle(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                ),
                child: Text('GET STARTED',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
