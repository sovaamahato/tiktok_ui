import 'package:flutter/material.dart';

import 'button.dart';

class PostTempelate extends StatelessWidget {
  // const PostTempelate({Key? key}) : super(key: key);
  final String userName;
  final String videoDescription;
  final String Likes;
  final String comment;
  final String Share;
  final userPost;

  PostTempelate({
    required this.userName, 
    required this.videoDescription,
    required this.Likes,
    required this.comment,
    required this.Share,
    required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //user post at the very back
        userPost,
        //user name and id
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            alignment: Alignment(-1, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "@${userName}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(text: videoDescription),
                    TextSpan(
                        text: " #fyp#ffjf",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
                ),
              ],
            ),
          ),
        ),
        //buttons--------------------------------
        Container(
          alignment: Alignment(1,1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            
            children: [
            
            MyButton(icon: Icons.favorite, text: Likes),
            MyButton(icon: Icons.chat_bubble_outline, text: comment),
            MyButton(icon: Icons.send, text: Share),

 
          ],
          ),

        )
      ]),
    );
  }
}