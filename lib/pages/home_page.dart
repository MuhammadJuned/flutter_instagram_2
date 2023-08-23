import 'package:flutter/material.dart';
import 'package:flutterinstagram/pages/profile_view.dart';
import 'package:flutterinstagram/pages/reels_page.dart';
import 'package:flutterinstagram/pages/search_page.dart';
import 'package:flutterinstagram/theme/colors.dart';

import 'main_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    MainPage(),
    SearchPage(),
    MainPage(),
    ReelsPage(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (pageIndex == 0) {
          return true;
        } else {
          setState(() {
            pageIndex = 0;
          });
          return false;
        }
      },
      child: Scaffold(
        backgroundColor: appBarColor,
        appBar: null,
        bottomNavigationBar: Container(
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? Icon(Icons.home, color: Colors.white, size: 28)
                        : Icon(Icons.home_outlined,
                            color: Colors.white, size: 28),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Icon(Icons.search, color: Colors.white, size: 28)
                      : Icon(Icons.search, color: Colors.white, size: 28),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? Icon(Icons.local_post_office,
                          color: Colors.white, size: 28)
                      : Icon(Icons.local_post_office_outlined,
                          color: Colors.white, size: 28),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? Icon(Icons.favorite, color: Colors.white, size: 28)
                      : Icon(Icons.favorite_outline_rounded,
                          color: Colors.white, size: 28),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 4;
                        });
                      },
                      icon: pageIndex == 4
                          ? Icon(Icons.account_circle,
                              color: Colors.white, size: 28)
                          : Icon(Icons.account_circle_outlined,
                              color: Colors.white, size: 28)),
                ),
              ],
            ),
          ),
        ),
        body: pages[pageIndex],
      ),
    );
  }
}
