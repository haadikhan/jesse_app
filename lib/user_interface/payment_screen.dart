import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jesse_app/signup_screen.dart';

import 'package:jesse_app/user_interface/routing_tabs.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => (SignupScreen())));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Payment",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img4.goodfon.com/wallpaper/nbig/8/4e/bodibilder-press-abs-muscle-myshtsy-poza-bodybuilder-vorkaut.jpg'),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Column(
                  children: [
                    PaymentText(),
                    const SizedBox(height: 20),
                    PaymentForm(),
                    const SizedBox(height: 40),
                    PayButton(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class PaymentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "please fill out the form below to to complete the subscription process",
      style: TextStyle(color: Colors.grey, fontSize: 16),
    );
  }
}

class PaymentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey[850],
                child: TextFormField(
                  decoration: InputDecoration(hintText: "example@gmail.com"),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phone no",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey[850],
                child: TextFormField(
                  decoration: InputDecoration(hintText: "1234556"),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Card Number",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey[850],
                child: TextFormField(
                  decoration: InputDecoration(hintText: "1223 3233 5667 5544"),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Expiry Date",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey[850],
                child: TextFormField(
                  decoration: InputDecoration(hintText: "mm/yy"),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CVV",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey[850],
                child: TextFormField(
                  decoration: InputDecoration(hintText: "123"),
                ),
              ),
            ],
          ),
        ]);
  }
}

class PayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RoutingTabs()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 125, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.grey[700],
          ),
          child: Text(
            'PAY',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
