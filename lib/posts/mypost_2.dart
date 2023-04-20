import 'package:flutter/material.dart';
import 'package:tiktok_ui/post_tempelate.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTempelate(
      userName: "nikita",
      videoDescription: "new song",
      Likes: "1.2M",
      comment: "2K",
      Share: "20k",
      userPost: Container(
        color: Colors.lightBlue,
      ),
    );
  }
}
