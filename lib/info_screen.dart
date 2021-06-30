// @dart=2.9


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

enum category_t{
  CPU, MOTHER_BOARD, RAM, POWER_SUPPLY, COMPUTER_CASE, IO_UNITS
}

class InfoScreen extends StatefulWidget {
  final category_t selectedCategory;

  const InfoScreen({ Key key, this.selectedCategory }) : super(key: key);

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
          getAppBarText(widget.selectedCategory),
          style: TextStyle(
            fontSize: 28, 
            fontFamily: ArabicFonts.Changa,
            package: 'google_fonts_arabic',
          )
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 7, right: 7),
            child: GroovinExpansionTile(
              title: Text(
                'Name',
                style: TextStyle(
                    fontSize: 22, 
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
                  'Omar Hesham Elshopky',
                  style: TextStyle(
                    fontSize: 20, 
                    fontFamily: ArabicFonts.Changa,
                    package: 'google_fonts_arabic',
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 7, right: 7),
            child: GroovinExpansionTile(
              title: Text(
                'youyyyyyo',
                style: TextStyle(
                    fontSize: 22, 
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
                  'tot',
                  style: TextStyle(
                    fontSize: 20, 
                    fontFamily: ArabicFonts.Changa,
                    package: 'google_fonts_arabic',
                  ),
                ),
              ],
            ),
          )
        ],
      )
        
    );
  }
}


String getAppBarText(category_t state){
  switch (state) {
    case category_t.RAM:
      return 'RAM';
      break;
    case category_t.CPU:
      return 'CPU';
      break;
    case category_t.IO_UNITS:
      return 'I/O Units';
      break;
    case category_t.MOTHER_BOARD:
      return 'Mother Board';
      break;
    case category_t.POWER_SUPPLY:
      return 'Power Supply';
      break;
    case category_t.COMPUTER_CASE:
      return 'Computer Case';
      break;
    default:
      return 'error';
      break;
  }
}