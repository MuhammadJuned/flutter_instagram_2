import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterinstagram/theme/colors.dart';

import 'gallery_view.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appBarColor,
          body: getGalleryView(context),
        ),
      ),
    );
  }
}

Column getGalleryView(BuildContext context) {
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
      SizedBox(height: 15,),
      Expanded(
        child: GalleryView(),
      ),
    ],
  );
}
