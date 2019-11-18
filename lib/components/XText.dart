import 'package:flutter/material.dart';

class XText extends StatelessWidget {

  final String data;

  final double fontSize;

  final FontWeight fontWeight;

  final Color color;

  final TextOverflow overflow;

  XText(this.data, {
    this.fontSize = 18,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.black,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
