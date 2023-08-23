import 'package:flutter/material.dart';
import 'package:flutterinstagram/constants/story_json.dart';

class GalleryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 1.0,
        children: Stories.map((store) {
          return GestureDetector(
            child: Image.asset(store['url'], fit: BoxFit.cover),
          );
        }).toList(),
      );
  }
}
