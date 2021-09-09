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
      // bottomNavigationBar: Row(
      //   children: [
      //     TextFormField(
      //       decoration: InputDecoration(
      //         hintText: "Type a massage",
      //         prefix: Icon(Icons.emoji_emotions),

      //       ),
      //     )
      //   ],
      // ),
      appBar: AppBar(
        title: Text(
          "Haadi",
          style: TextStyle(color: Colors.white, fontSize: 20),
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
            child: Container(
              child: Expanded(child: ChatScreenUi()),
            )),
      ),
    );
  }
}

class ChatScreenUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _messageSender('hi ', '12:30', context),
        _messageReciever("hi", '12:31', context),
        _messageSender('how are you?', '12:30', context),
        _messageReciever("i am good.", '12:31', context),
        _messageSender('great', '12:30', context),
        _messageReciever("Whats going on?", '12:31', context),
        _messageSender('i am in office.Working.Why?', '12:30', context),
        _messageReciever(
            "Nothing.just asking for the sack of knowledge", '12:31', context),
        _messageSender('ok no issue', '12:30', context),
        _messageReciever("thanks", '12:31', context),
        _messageSender('Are you coming home? ', '12:30', context),
        _messageReciever("yeah inn few hours.", '12:31', context),
        _messageSender(
            'okat bring some biryani if possible ', '12:30', context),
        _messageReciever("okay.How much kg?", '12:31', context),
        _messageSender('i think 2 kg will be enough ', '12:30', context),
        _messageReciever("okay done.", '12:31', context),
        _messageSender('try to come fast ', '12:30', context),
        _messageReciever("ok.", '12:31', context),
        _messageSender('ok bye ', '12:30', context),
        _messageReciever("ba bye", '12:31', context),
      ],
    );
  }

  Widget _messageSender(String message, String time, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.lightGreen[200],
      ),
      child: Text(
        message,
        style: TextStyle(color: Colors.black),
      ),
      // child: ListTile(
      //   minLeadingWidth: 200,
      //   title: Text(
      //     message,
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   // trailing: Text(time, style: TextStyle(color: Colors.black)),
      // ),
    );
  }

  Widget _messageReciever(String message, String time, BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 20,
        minWidth: 20,
        maxHeight: MediaQuery.of(context).size.width * (0.7),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      child: ListTile(
        tileColor: Colors.white,
        title: Text(
          message,
          style: TextStyle(color: Colors.black),
        ),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
