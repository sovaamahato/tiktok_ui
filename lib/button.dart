import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);
  final icon;
  final String text;
  MyButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,
          size: 35,),
          SizedBox(height: 10,),
          Text(text)
        ],
      ),
    );
    

  }
}