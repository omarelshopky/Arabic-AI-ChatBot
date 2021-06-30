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

  double categoryFontSize = 20, imageWidth = 170, imageHeight = 100;
  


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
      body: RelativeBuilder( 
        builder: (context, height, width, sy, sx) {
          return Column(
            children: [
              Row( // First Row
                children: [
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(40), right: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/cpu.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'CPU',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/motherBoard.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'Mother Board',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
              Row( // Second Row
                children: [
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(40), right: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/ram.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'RAM',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/powerSupply.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'Power Supply',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
              Row( // Third Row
                children: [
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(40), right: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/computerCase.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'Computer Case',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: sy(15), left: sx(15)),
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CategoryScreen())
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              "images/ioUnits.png",
                              width: sx(imageWidth),
                              height: sy(imageHeight),
                            )
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.black, width: 0.7),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Text(
                          'I/O Units',
                          style: TextStyle(
                            fontSize: categoryFontSize, 
                            fontWeight: FontWeight.bold,
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: sy(13)),
                child: 
                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatBotScreen())
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 1, right: 5),
                      child: Text('ChatBot ' + 'احصل على مساعدة  ')
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color(0xFF079c92),
                      side: BorderSide(color: Color(0xFF079c92), width: 0.7),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                        fontFamily: ArabicFonts.El_Messiri,
                        package: 'google_fonts_arabic',
                      ),
                      elevation: 5
                    ),
                  ),
              )
            ],
          );
        },
      ), 
    );
  }
}