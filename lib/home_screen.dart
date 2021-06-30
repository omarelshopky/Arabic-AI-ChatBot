// @dart=2.9

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'category_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3cae5a),
                const Color(0xFF079c92),
              ],
              begin: const FractionalOffset(0.0, 0.3),
                end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Column(
          children: [
            RelativeBuilder( 
              builder: (context, height, width, sy, sx) {
                return Container(
                  margin: EdgeInsets.only(top: sy(70)),
                  child: Image.asset(
                    "images/logo.png",
                    width: sx(270),
                    height: sy(270),
                  )
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryScreen())
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 2, bottom: 2, right: 22, left: 22),
                  child: Text(
                    'دخول',
                    style: TextStyle(
                      fontFamily: ArabicFonts.El_Messiri,
                      package: 'google_fonts_arabic',
                      fontSize: 24,
                    ),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                ),
              ),
            )
          ],
        )
    );
  }
}