import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/inbox.dart';
import 'package:tiktok_ui/pages/plus.dart';
import 'package:tiktok_ui/pages/profile.dart';
import 'package:tiktok_ui/pages/search.dart';

import 'pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex=0;
  void _navigationBottomBar(int index)
  {
    setState(() {
      _selectIndex=index;
    });
  }

  final List<Widget> _pages=[
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
    
 
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:_pages[_selectIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          label: 'Home'
          
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,),
          label: 'Search'
          ),
        BottomNavigationBarItem(
          
          icon: Icon(Icons.add_box_rounded,),
          label: ''
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_rounded,),
          label: 'inbox'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person,),
          label: 'profile'
          ),

      ]),
    );
  }
}