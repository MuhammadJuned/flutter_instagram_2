import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterinstagram/constants/story_json.dart';

import '../theme/colors.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: getAppBar(context),
        body: getHeader(context));
  }
}

Column getHeader(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white.withOpacity(0.1)),
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppLocalizations.of(context)!.search,
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              prefixIcon: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: Stories.length,
          itemBuilder: (context, index) {
            return getColum(
                context, Stories[index]['title'], Stories[index]['url']);
          },
        ),
      ),
    ],
  );
}

Widget _textFields({controller, hint, icon}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white.withOpacity(0.7)),
    padding: EdgeInsets.only(left: 10),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none, hintText: hint, prefix: icon),
    ),
  );
}

AppBar getAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: appBarColor,
    leading: IconButton(
        color: Colors.white,
        icon: Icon(Icons.arrow_back_rounded),
        onPressed: () {
          Navigator.pop(context);
        }),
    title: Container(
      child: Row(
        children: [
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
        Icons.camera_alt_outlined,
        color: Colors.white,
        size: 28,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        Icons.note_alt_outlined,
        color: Colors.white,
        size: 28,
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}

Padding getColum(BuildContext context, String title, String url) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("$url"), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(height: 0),
            Text(
              "Sent 3h ago",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 13,
              ),
            ),
          ],
        ),
        Expanded(

          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
        ),
        SizedBox(width: 5)
      ],
    ),
  );
}
