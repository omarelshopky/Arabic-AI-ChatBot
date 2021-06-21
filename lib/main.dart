// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_screen.dart';
import 'chatbot_screen.dart';

// ignore: slash_for_doc_comments
/***      Entry Point for the App     ***/
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /** Handle arabic RTL and English LTL */
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en", "US"),
        Locale("ar", "AE"), 
      ],
      /**** */
      debugShowCheckedModeBanner: false,
      title: "ChatBot",
      home: ChatBotScreen(),
    );
  }
} 
