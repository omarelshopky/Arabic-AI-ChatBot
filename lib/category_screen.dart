// @dart=2.9

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:relative_scale/relative_scale.dart';

import 'chatbot_screen.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({ Key key }) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCB05), // AppBar Color
        centerTitle: true,
        title: Text(
          "الصفحة الرئيسية",
          style: TextStyle(
            fontSize: 28, 
            fontFamily: ArabicFonts.El_Messiri,
            package: 'google_fonts_arabic',
          )
        ),
      ),
      
    );
  }
}