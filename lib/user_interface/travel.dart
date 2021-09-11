import 'dart:ui';

import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
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
                TravelWidget(),
              ],
            )),
      ),
    );
  }
}

class TravelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        _containerForTraveling("august/23/23", "turkey",
            "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/LakeWakatipuNewZealand.jpg?crop=0,25,4000,2200&wid=2000&hei=1100&scl=2.0"),
        _containerForTraveling("november/3/566", "newzealand",
            'https://cdn.ceoworld.biz/wp-content/uploads/2019/01/Scotland.jpg'),
        _containerForTraveling("october/3/566", "newzealand",
            'https://external-preview.redd.it/XYVurWkThi6cAUCEAe1rZwzGIqojMyxX4hCK1PaN67s.jpg?auto=webp&s=16c28a11ac715b2f0f84277d9c442085c1afe0c7'),
        _containerForTraveling("november/3/566", "newzealand",
            'http://buzz.iloveindia.com/wp-content/uploads/2015/09/beautiful-countries-2.1.jpg'),
      ]),
    );
  }
}

Widget _containerForTraveling(String date, String countryName, String url) {
  return Container(
    height: 130,
    width: 350,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.cover,
      ),
    ),
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          date.toString(),
        ),
        Text(
          countryName.toString(),
        ),
      ],
    ),
  );
}
