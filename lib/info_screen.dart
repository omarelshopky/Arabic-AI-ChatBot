// @dart=2.9


import 'package:arabic_chatbot/infodata.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:groovin_widgets/groovin_widgets.dart';


enum category_t{
  CPU, MOTHER_BOARD, RAM, POWER_SUPPLY, COMPUTER_CASE, IO_UNITS
}

class InfoScreen extends StatefulWidget {
  final categoryData data;

  const InfoScreen({ Key key, this.data }) : super(key: key);
  
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCB05), // AppBar Color
        centerTitle: true,
        title: Text(
          widget.data.appBarStr,
          style: TextStyle(
            fontSize: 28, 
            fontFamily: ArabicFonts.Changa,
            package: 'google_fonts_arabic',
          )
        ),
      ),
      body: Column(
        children: buildSlideShowList(widget.data.header, widget.data.info),
      )
    );
  }
}




Widget slideShow(String title, String info){
  return Container(
    margin: EdgeInsets.only(top: 10, left: 7, right: 7),
    child: GroovinExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16, 
          fontWeight: FontWeight.bold,
          fontFamily: ArabicFonts.Changa,
          package: 'google_fonts_arabic',
        ),
      ),
      boxDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: const Offset(2.0, 2.0), //Offset
            blurRadius: 2.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), 
        ],
      ),
      children: [
        Text(
          info,
          style: TextStyle(
            fontSize: 15, 
            fontFamily: ArabicFonts.Changa,
            package: 'google_fonts_arabic',
          ),
        )
      ],
    ),
  );
}

List<Widget> buildSlideShowList(List<String> header, List<String> info){
  List<Widget> slideList = [];
  for (int i = 0; i < header.length; i++){
    slideList.add(slideShow(header[i], info[i]));
  }
  return slideList;
}