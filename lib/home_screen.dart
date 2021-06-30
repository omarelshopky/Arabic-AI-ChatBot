import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

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
        child: Align(
          alignment: Alignment.center,
          
          child: RelativeBuilder( 
            builder: (context, height, width, sy, sx) {
              return Image.asset(
                "images/logo.png",
                width: sx(320),
                height: sy(320),
              );
            }
          ),
        )







      
    );
  }
}