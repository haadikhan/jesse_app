import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            leading: Text(
              "Explore",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            trailing: Icon(
              Icons.video_collection,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Expanded(child: Meditaion()),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: EatAndExercisingTips()),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: Books()),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Meditaion extends StatelessWidget {
  ExploreScreen exploreScreen = ExploreScreen();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Meditaion",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_3ujnw6PtTfqE0TkTBJkYxKGE-0ttAP55_g&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://i.pinimg.com/474x/dc/e6/c0/dce6c0923a316554572841bb6f857c31.jpg'),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class EatAndExercisingTips extends StatelessWidget {
  Meditaion meditaion = Meditaion();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Eat and Exercising tips",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUYED4GG32hHaHBeN25S6I2cWg5aA1LgWpUA&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq4ZVm1k2eba2DOUcVtxK56qz1bR3mOPIxdg&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUR-GecJECmgXaCwtGh1CMI-EpskTa8FxpWw&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz4tYqf3Z2am_hkq9-ZpiSPll4FeNCsEZbwA&usqp=CAU    '),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGMi7i2eDgXr3VTWFuIlSMHNiPuwZ_bgbAlw&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGMi7i2eDgXr3VTWFuIlSMHNiPuwZ_bgbAlw&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGMi7i2eDgXr3VTWFuIlSMHNiPuwZ_bgbAlw&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl3BpZzWRfzu7jfRPzK5GvP4d0WmDreCa1-Q&usqp=CAU'),
              SizedBox(width: 10),
              containerForVideo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl3BpZzWRfzu7jfRPzK5GvP4d0WmDreCa1-Q&usqp=CAU'),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Books extends StatelessWidget {
  Meditaion meditaion = Meditaion();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Books",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              containerForBooks(
                  "https://toppng.com/uploads/preview/transparent-background-books-115494203893a75wfnea0.png"),
              SizedBox(width: 10),
              containerForBooks(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0AqVD7eK_Pwh8gkKB5XyrmVFI2TsypsHdA&usqp=CAU"),
              SizedBox(width: 10),
              containerForBooks(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqSRGlQx8Dx4XZPhEp9KWnaj6-ZwvvXfEBTA&usqp=CAU"),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

Widget containerForVideo(String url) {
  return Container(
    margin: EdgeInsets.all(6),
    width: 180,
    height: 130,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.fill,
      ),
    ),
    child: Center(
      child: Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    ),
  );
}

Widget containerForBooks(String url) {
  return Container(
      margin: EdgeInsets.all(5),
      width: 260,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Intermittent Fasting\n Simplified for body & \n Mind book',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Text(
                        'ORDER NOW',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}
