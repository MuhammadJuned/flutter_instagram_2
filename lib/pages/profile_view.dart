import 'package:flutter/material.dart';
import 'package:flutterinstagram/pages/gallery_view.dart';
import 'package:flutterinstagram/pages/profile_header_view.dart';
import 'package:flutterinstagram/theme/colors.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Scaffold(
        backgroundColor: appBarColor,
        appBar: getAppBar(context),
        body: getProfileView(context),
      ),
    );
  }
}

DefaultTabController getProfileView(BuildContext context) {
  return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ProfileHeaderView(context),
                ],
              ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            Material(
              color: Colors.black,
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on_sharp, color: Colors.white),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box_outlined,
                        size: 28, color: Colors.white),
                  ),
                  Tab(
                    icon: Icon(Icons.add_box_outlined,
                        size: 28, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GalleryView(),
                  GalleryView(),
                  GalleryView(),
                ],
              ),
            ),
          ],
        ),
      ));
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
