import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jesse_app/user_interface/open_chat_screen.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message",
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
            child: ListView(
              children: [
                Expanded(child: MessageListTile()),
              ],
            )),
      ),
    );
  }
}

class MessageListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
        _listTileForMessage("Jesse", "ho jordan its jesse nice to meet you",
            "12/12/2021", context),
        Divider(height: 2, color: Colors.grey),
      ],
    );
  }

  Widget _listTileForMessage(
      String name, String message, String time, BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OpenChatScreen()));
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://scontent.fkhi11-1.fna.fbcdn.net/v/t1.18169-9/12096526_111858052505168_6802344812800986263_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEt2-BsRXbKFNgFk9b1JFwPXlTvcOKudIBeVO9w4q50gI6TKxFfawDvuKNbrF3WsY3ftlQdspurkk4UsQmYht0s&_nc_ohc=BB7P9RFOlOoAX-C7wpH&_nc_ht=scontent.fkhi11-1.fna&oh=16036efe01117bde6d15b49e4d310df3&oe=61530664"),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
    );
  }
}
