import 'package:flutter/material.dart';
import 'package:tiktok_ui/button.dart';
import '../post_tempelate.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTempelate(
      userName: "sovaamahato",
      videoDescription: "random song",
      Likes: "1K",
      comment: "233",
      Share: "200",
      userPost: Container(color: Colors.deepPurple),
    );
  }
}
