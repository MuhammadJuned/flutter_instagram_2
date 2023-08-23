import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterinstagram/constants/SPBean.dart';
import 'package:flutterinstagram/constants/story_json.dart';
import 'package:flutterinstagram/pages/chat_view.dart';
import 'package:flutterinstagram/pages/post_view.dart';
import 'package:flutterinstagram/pages/story_view.dart';
import 'package:flutterinstagram/theme/colors.dart';

import '../main.dart';


class MainPage extends StatelessWidget {
  int pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: getAppBar(context),
      body: getFeedView(context),
    );
  }
}

SingleChildScrollView getFeedView(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
                                      "assets/images/gigi10.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Icon(Icons.add_circle,
                                      size: 26, color: Colors.blue[600])),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                      width: 70,
                      child: Text(AppLocalizations.of(context)!.yourstory,
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
        Column(
            children: List.generate(Stories.length, (index) {
              return PostView(
                  userName: Stories[index]['title'],
                  proImage: Stories[index]['url'],
                  postImage: "postImage",
                  commentCount: "commentCount",
                  likeCount: "likeCount");
            })),
      ],
    ),
  );
}

Widget getStoryView() {
  return Container();
}

AppBar getAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: appBarColor,
    title: Text(
      "Instagram",
      style: TextStyle(fontSize: 40, fontFamily: 'BillaBong'),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Icon(Icons.favorite, color: Colors.white, size: 24),
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) =>
                  AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          MyApp.of(context)?.setLocale(
                              Locale.fromSubtags(languageCode: 'de'));
                         SPbean().setStringPreference(SPbean.KEY_LANGUAGE, "de");
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                            MyApp.of(context)?.setLocale(
                                Locale.fromSubtags(languageCode: 'en'));
                            SPbean().setStringPreference(SPbean.KEY_LANGUAGE, "en");
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
            );
          },
        ),
      ),
      SizedBox(width: 5),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Icon(Icons.send, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ChatView()));
          },
        ),
      ),
      SizedBox(width: 5)
    ],
  );
}
