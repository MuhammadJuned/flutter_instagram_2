import 'package:flutter/material.dart';
import 'package:flutterinstagram/constants/story_json.dart';
import 'package:flutterinstagram/theme/colors.dart';

class ReelsPage extends StatefulWidget {
  ReelsPage({Key? key}) : super(key: key);

  @override
  ReelsPageState createState() => ReelsPageState();
}

class ReelsPageState extends State<ReelsPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: null,
      body: SafeArea(
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: List.generate(Stories.length, (index) {
            return getPageView(Stories[index]['title'], Stories[index]['url']);
          }),
        ),
      ),
    );
  }
}

Stack getPageView(String name, String url) {
  return Stack(children: [
    Container(
        decoration: BoxDecoration(
            image: DecorationImage(
      image: AssetImage("$url"),
      fit: BoxFit.cover,
    ))),
    Column(
      children: [
        const Expanded(
            child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        )),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/gigi9.jpg"),
                        backgroundColor: Colors.blue,
                        radius: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Name of user",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          child: Center(
                            child: Text("Follow",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          border: Border.all(color: Colors.white, width: 1),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    " This is my birthday today :) : ).....",
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Chip(
                    label: Text(
                      "Inidana polis - Original audio",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    backgroundColor: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.only(left: 5, right: 5),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child:
                          Icon(Icons.music_note_rounded, color: Colors.white),
                    ),
                  ),
                ],
              ),
              //Buttons()
            ],
          ),
        ),
      ],
    ),
    Positioned(bottom: 0, right: 5, width: 50, child: Buttons())
  ]);
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Icon(Icons.favorite_outline_rounded,
                  color: Colors.white, size: 30),
              SizedBox(
                height: 3,
              ),
              Text(
                "5.9M",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Icon(Icons.chat_bubble_outline_rounded,
                  color: Colors.white, size: 30),
              SizedBox(
                height: 3,
              ),
              Text(
                "9,958",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Icon(Icons.send_rounded, color: Colors.white, size: 30),
              SizedBox(
                height: 3,
              ),
              Text(
                "212M",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Icon(Icons.more_vert, color: Colors.white, size: 30),
              SizedBox(
                height: 3,
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 2, color: Colors.white),
                image: DecorationImage(
                  image: AssetImage("assets/images/gigi2.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
