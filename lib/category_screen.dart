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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
                              width: sx(170),
                              height: sy(100),
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
                            fontSize: 20, 
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
              
            ],
          );
        },
      ), 
    );
  }
}