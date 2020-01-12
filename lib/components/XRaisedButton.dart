import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XText.dart';

class XRaisedButton extends StatelessWidget {

  final Function onPressed;

  final String text;

  final Color textColor;

  final Color buttonColor;

  final FontWeight fontWeight;

  final double radius;

  final Color buttonBorderColor;

  final double height;

  final double width;

  final double fontSize;

  XRaisedButton({
    @required this.text,
    @required this.onPressed,
    this.textColor,
    this.buttonColor,
    this.fontWeight,
    this.radius = 0,
    this.buttonBorderColor = Colors.black54,
    this.height,
    this.width,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        onPressed: onPressed,
        color: buttonColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: buttonBorderColor),
            borderRadius: BorderRadius.all(Radius.circular(radius))
        ),
        child: XText(text, color: textColor, fontWeight: fontWeight, fontSize: fontSize,),
      ),
    );
  }
}
