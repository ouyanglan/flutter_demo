import 'package:flutter/material.dart';

class OvalBottomBorderClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final Rect rect = Rect.fromLTWH(0 - size.width / 2, 0 - size.width / 2,
        size.width * 2, size.height * 2);
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}