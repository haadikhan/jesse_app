import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jesse_app/user_interface/get_started_screen.dart';
import 'package:jesse_app/user_interface/payment_screen.dart';

enum subscriptionType { regular, extended }

class WelcomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GetStartedScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
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
              GreetingsText(),
              RegisterButton(),
              OrText(),
              SignUpWithPhoneButton(),
              SignUpWithGoogleButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class GreetingsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 45,
            )),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Get closer with jesse,get speacial access and get others intresting tips",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubscriptionAlertDialouge()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 125, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.grey[700],
          ),
          child: Text(
            'REGISTER',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class OrText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "or",
      style: TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}

class SignUpWithPhoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubscriptionAlertDialouge()));
        },
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 1, color: Colors.white)),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Continue with phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}

class SignUpWithGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubscriptionAlertDialouge()));
        },
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 1, color: Colors.white)),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Continue with Gmail",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}

// ignore: must_be_immutable
class SubscriptionAlertDialouge extends StatelessWidget {
  subscriptionType? type = subscriptionType.regular;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 180),
      child: AlertDialog(
        title: Text(
          "Select Subscriptions",
          style: TextStyle(color: Colors.white),
        ),
        content: Column(
          children: [
            ListTile(
              leading: Radio(
                value: subscriptionType.regular,
                groupValue: type,
                onChanged: (type) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GetStartedScreen())),
              ),
              title: Text("Regular"),
              subtitle: Text("9.97/month"),
            ),
            ListTile(
              leading: Radio(
                value: subscriptionType.regular,
                groupValue: type,
                onChanged: (type) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GetStartedScreen())),
              ),
              title: Text("Extended"),
              subtitle: Text("12.97/month"),
            ),
          ],
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
