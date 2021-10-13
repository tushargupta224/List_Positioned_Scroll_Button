import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  var text;

  var color;


  Tile({required this.text, this.color}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: color,
        ),
        child: Center(
          child: Text(text, style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 48,
          ),),
        ),
    );
  }


}