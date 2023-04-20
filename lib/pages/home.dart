import 'package:flutter/material.dart';
import '../posts/mypost_2.dart';
import '../posts/mypost_3.dart';
import '../posts/mypost_1.dart';
class UserHomePage extends StatelessWidget {
  // const UserHomePage({Key? key}) : super(key: key);

  final _controller= PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          
          ],
      ),
    );
  }
}