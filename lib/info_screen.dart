// @dart=2.9

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum catergory_t{
  CPU, MOTHER_BOARD, RAM, POWER_SUPPLY, COMPUTER_CASE, IO_UNITS, NULL
}

class InfoScreen extends StatefulWidget {
  final catergory_t selectedCategory;

  const InfoScreen({ Key key, this.selectedCategory }) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}