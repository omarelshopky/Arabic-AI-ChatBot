// @dart=2.9

import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'database.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({ Key key }) : super(key: key);

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  // Class Properties
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List <String> _data = [];
  TextEditingController messageTextBox = TextEditingController();
  final _controller = ScrollController();
  bool _recommend = false;
  List<String> _answer = [];

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
            controller: _controller,
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: 
              (BuildContext context, int index, animation){
                return buildItem(_data[index], index, animation);
            },
            padding: EdgeInsets.only(bottom: 60),
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
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      icon: IconButton(
                        icon: Icon(Icons.send),
                        color: Color(0xFF00A99D), // Send Icon Color
                        iconSize: 30,
                        onPressed: (){
                          if(messageTextBox.text.length > 0)
                            this.handleRequest();
                        },
                      ),
                      hintText: "ما هي مشكلتك؟",
                      hintTextDirection: TextDirection.rtl,
                      fillColor: Colors.white12,
                    ),
                    controller: messageTextBox, // Take the text inputed
                    textInputAction: TextInputAction.send, 
                    onSubmitted: (message){
                      if(messageTextBox.text.length > 0)
                        this.handleRequest();
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  /***      Handle what happend when take message from user       ***/
  void handleRequest()
  {
    this.insertSingleItem(messageTextBox.text);

    if(_recommend){
      if(messageTextBox.text == "نعم")
      {
        for(int i = 1; i < _answer.length; i++){
          this.insertSingleItem(_answer[i] + "<bot>");
        }
      }
      else
      {
        this.insertSingleItem("اذا ما هي المشكلة؟" + "<bot>");
      }
      _recommend = false;
    }
    else{
      _answer = checkQuestion(messageTextBox.text);
      if(_answer[0].startsWith("هل تقصد"))
      {
        _recommend = true;
        this.insertSingleItem(_answer[0] + "<bot>");
      }
      else
      {
        for(int i = 0; i < _answer.length; i++){
        this.insertSingleItem(_answer[i] + "<bot>");
        }
      }
    }
    
    messageTextBox.clear();
  }


  /***        insertSingleItem        ***/
  void insertSingleItem(String message)
  {
    _data.add(message);
    _listKey.currentState.insertItem(_data.length - 1);
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}



/***      Function for building Item Widget (Message Bubble)     ***/
Widget buildItem(String item, int index, Animation animation)
{
  bool mine = item.endsWith("<bot>"); // Check Who send this message
  return SizeTransition(
    sizeFactor: animation,
    child: Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        alignment: mine ? Alignment.topLeft : Alignment.topRight, 
        child: Bubble(
          child: Text(
            item.replaceAll("<bot>", ""),
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          nip: mine ? BubbleNip.leftTop : BubbleNip.rightTop,
          shadowColor: Color(0xFFFFCB05),
          elevation: 2,
          color: Colors.grey[200],
          padding: BubbleEdges.only(bottom: 5, top: 5, right: 20, left: 10),
          margin: mine ? BubbleEdges.only(right: 50, left: 10) : BubbleEdges.only(right: 10, left: 50)
        ),
      ),
    )
    );
}
