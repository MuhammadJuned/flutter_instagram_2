import 'package:flutter/material.dart';
import 'package:flutterinstagram/theme/colors.dart';

class StoryView extends StatelessWidget{
  final String name;
  final String image;
  const StoryView({super.key, required this.name,required this.image});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0,right: 4.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                gradient:LinearGradient(
                  colors: storyBorderColor,
                  begin: Alignment.topCenter,end: Alignment.bottomCenter,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Center(
                child: Container(
                  width: 76,
                  height: 76,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [BoxShadow(spreadRadius: 1)],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: new AssetImage("$image"),
                            fit: BoxFit.cover
                        ),
                      ),

                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(width : 70,
              child: Text("$name",
                  textAlign : TextAlign.center,style: TextStyle(color: Colors.white,
              overflow: TextOverflow.ellipsis)))
        ],
      ),
    );
  }

}