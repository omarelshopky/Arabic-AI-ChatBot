import 'package:flutter/material.dart';

import 'chatbot_screen.dart';

// ignore: slash_for_doc_comments
/***      Entry Point for the App     ***/
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatBot",
      home: ChatBotScreen(),
    );
  }
}