import 'package:flutter/material.dart';
import 'package:flutter_pro_2/widgets/Chat_Sample.dart';

class Chat_Screen extends StatelessWidget {
  const Chat_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          leadingWidth: 30,
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Do. Name",style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10,right: 14),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,right: 14),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,right: 14),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
        itemBuilder: (context, index) => Chat_Sample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.deepPurpleAccent,
                size: 32,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Send text"
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                color: Colors.deepPurpleAccent,
                size: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
