import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final String userName;
  final String proImage;
  final String postImage;
  final String commentCount;
  final String likeCount;

  const PostView(
      {super.key,
      required this.userName,
      required this.proImage,
      required this.postImage,
      required this.commentCount,
      required this.likeCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: new AssetImage("$proImage"), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$userName",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Mumbai,Maharashtra",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 12),
                    ),
                  ],
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage("$proImage"), fit: BoxFit.cover)),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.messenger_outline_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                Icon(Icons.send, color: Colors.white),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.bookmark_border_rounded,
                    color: Colors.white,
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Liked by ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: "Muhammad Juned ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: "and ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: "48 Others ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ])),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "its_mj ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: "Today is a good for everyone.Hope everyone is fine.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ])),
          ),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "View 150 Comments ",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 11,
                    fontWeight: FontWeight.w700),
              ),
            ])),
          )
        ],
      ),
    );
  }
}
