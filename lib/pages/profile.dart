import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      //aapbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        centerTitle: true,
        title: Text("Profile"),
        leading: Icon(Icons.person_add),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        )],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //profile photo
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),shape: BoxShape.circle),
          ),

          //username
          Text("@sovaaMahato",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),

          //name of following, followers and likes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child:Column(
                    children: [
                      Text("13K",style: TextStyle(color: Colors.black)),
                      Text('following',style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child:Column(
                    children: [
                      Text("13K",style: TextStyle(color: Colors.black)),
                      Text('folowers',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child:Column(
                    children: [
                      Text("13K",style: TextStyle(color: Colors.black),),
                      Text('Likes',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),

            ],

          ),

          //buttons-->edit profile,instagram, bookmarks
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  
                  child:  Text("Edit profile",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(6)),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  
                  child:  Icon(Icons.camera_alt,color: Colors.black),
                  
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(6)),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  
                  child:  Icon(Icons.bookmark_border,color: Colors.black),
                  
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(6)),
                ),
              ],
            ),
          ),

          //bio
          SizedBox(height: 8,),
          Text("Bio here!",style: TextStyle(color: Colors.black),),


          //default tab controller

        ],),
      ),
    );
  }
}