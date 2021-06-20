import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Class Properties
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List <String> _data = [];
  static const String BOT_URL = "";
  TextEditingController messageTextBox = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCB05),
        centerTitle: true,
        title: Text(
          "ChatBot",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}