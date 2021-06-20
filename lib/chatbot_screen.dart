import 'dart:ui';

import 'package:flutter/material.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({ Key? key }) : super(key: key);

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  // Class Properties
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List <String> _data = [];
  TextEditingController messageTextBox = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCB05), // AppBar Color
        centerTitle: true,
        title: Text(
          "ChatBot",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
        ),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedList(
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: 
              (BuildContext context, int index, Animation animation){
                return widget; //buildItem(_data[index], index, animation);
            },
          ),

          /**  Message Textbox and Sending Icon **/
          Align( 
            alignment: Alignment.bottomCenter,
            child: ColorFiltered(
              colorFilter: ColorFilter.linearToSrgbGamma(),
              child: Container(
                color: Color(0xFFCCCCCC), // Message Textbox Color
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.message,
                        color: Color(0xFF00A99D) // Send Icon Color
                      ),
                      hintText: "ما هي مشكلتك؟",
                      fillColor: Colors.white12,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



/***      Function for building Item Widget      ***/
//Widget buildItem(String item, int index, Animation animation){
  
//}