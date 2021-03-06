import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jesse_app/user_interface/routing_tabs.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ProfilePictureAndName(),
                      ProfileDetails(),
                    ],
                  ),
                ),
                LogoutButton(),
              ],
            )),
      ),
    );
  }
}

class ProfilePictureAndName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(90),
          margin: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://scontent.fkhi11-1.fna.fbcdn.net/v/t1.18169-9/12096526_111858052505168_6802344812800986263_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEt2-BsRXbKFNgFk9b1JFwPXlTvcOKudIBeVO9w4q50gI6TKxFfawDvuKNbrF3WsY3ftlQdspurkk4UsQmYht0s&_nc_ohc=BB7P9RFOlOoAX-C7wpH&_nc_ht=scontent.fkhi11-1.fna&oh=16036efe01117bde6d15b49e4d310df3&oe=61530664'),
              )),
        ),
        Text(
          'Antony Andreo',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        )
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _listTileForProfileDetail('Membership', "Regular Member", () {}),
        _listTileForProfileDetail('Community', "Facebook", () {}),
        _listTileForProfileDetail('Streaming ', "Live", () {}),
        _listTileForProfileDetail('Personal', "Account", () {}),
        _listTileForProfileDetail('Application', "About", () {}),
        _listTileForProfileDetail('protection', "Privacy", () {}),
        _listTileForProfileDetail('condition', "Term and Condition", () {}),
      ],
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoutingTabs(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[700],
        ),
        child: Center(
          child: Text(
            'Log out',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

Widget _listTileForProfileDetail(
    String title, String subtitle, Function function) {
  return ListTile(
    title: Text(title),
    subtitle: Text(
      subtitle,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
    ),
    trailing: InkWell(
      child: Icon(
        Icons.arrow_forward,
        color: Colors.white30,
      ),
    ),
  );
}
