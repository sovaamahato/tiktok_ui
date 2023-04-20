import 'package:flutter/material.dart';

import '../post_tempelate.dart';

class MyPost3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PostTempelate(
      userName: "random User",
      videoDescription: "new song",
      Likes: "1.2M",
      comment: "2K",
      Share: "20k",
      userPost: Container(
        color: Colors.greenAccent,
      ),
    );
    
  }
}