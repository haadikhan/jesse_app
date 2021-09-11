import 'dart:ui';

import 'package:flutter/material.dart';

class OpenChatScreen extends StatefulWidget {
  @override
  _OpenChatScreenState createState() => _OpenChatScreenState();
}

class _OpenChatScreenState extends State<OpenChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Haadi",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatScreenUi(),
              ],
            ),
          ),
          SendMessageArea(),
        ],
      ),
    );
  }
}

class ChatScreenUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _messageSender('hi ', '12:30', context),
          _messageReciever("hi", '12:31', context),
          _messageSender('how are you?', '12:30', context),
          _messageReciever("i am good.", '12:31', context),
          _messageSender('great', '12:30', context),
          _messageReciever("Whats going on?", '12:31', context),
          _messageSender(
              'i am in office.Working.Why.add addadd dd?', '12:30', context),
          _messageReciever("Nothing.just asking for the sack of knowledge",
              '12:31', context),
          _messageSender('ok no issue', '12:30', context),
          _messageReciever("thanks", '12:31', context),
          _messageSender('Are you coming home? ', '12:30', context),
          _messageReciever("yeah inn few hours.", '12:31', context),
          _messageSender('okat bring some biryani if  ', '12:30', context),
          _messageReciever("okay.How much kg?", '12:31', context),
          _messageSender('i think 2 kg will be enough ', '12:30', context),
          _messageReciever("okay done.", '12:31', context),
          _messageSender('try to come fast ', '12:30', context),
          _messageReciever("ok.", '12:31', context),
          _messageSender('ok bye ', '12:30', context),
          _messageReciever(" ba bye", '12:31', context),
        ],
      ),
    );
  }

  Widget _messageSender(String message, String time, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.lightGreen[200],
                ),
                child: Text(
                  message,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _messageReciever(String message, String time, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(7),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          child: Container(
            child: Text(
              message,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}

class SendMessageArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo),
            iconSize: 25,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Send a Message",
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 25,
              ),
              color: Colors.green),
        ],
      ),
    );
  }
}
