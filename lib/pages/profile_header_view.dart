import 'package:flutter/material.dart';
import 'package:flutterinstagram/pages/story_view.dart';
import 'package:flutterinstagram/theme/colors.dart';

import '../constants/story_json.dart';

Widget ProfileHeaderView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: getProfileView(context)
    );
  }

Container getProfileView(BuildContext context) {
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: storyBorderColor,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: DecorationImage(
                          image: new AssetImage("assets/images/gigi6.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Posts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "435",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "255",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Following",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Muhammad Juned",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "its just myself talking to myself about myself.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            Colors.grey.withOpacity(0.5), //<-- SEE HERE
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                            Colors.grey.withOpacity(0.5), //<-- SEE HERE
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Share Profile',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                    child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor:
                        Colors.grey.withOpacity(0.5), //<-- SEE HERE
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                )),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  Text(
                    "Story highlights",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_drop_up_sharp,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Keep your favourite stories on yout profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: new AssetImage(
                                          "assets/images/gigi11.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                          width: 70,
                          child: Text("New",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis))),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: List.generate(Stories.length, (index) {
                      return StoryView(
                          name: Stories[index]['title'],
                          image: Stories[index]['url']);
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}

AppBar getAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: appBarColor,
    title: Container(
      child: Row(
        children: [
          Icon(
            Icons.lock_outline_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            "itsd_mj",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(width: 3),
          Icon(
            Icons.arrow_drop_down_sharp,
            color: Colors.white,
          ),
        ],
      ),
    ),
    actions: [
      Icon(
        Icons.add_box_outlined,
        color: Colors.white,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        Icons.menu_rounded,
        color: Colors.white,
        size: 30,
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}
