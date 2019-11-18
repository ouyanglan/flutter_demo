import 'package:flutter/material.dart';

class RowImages extends StatelessWidget {

  final List<String> images;

  RowImages(this.images);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images.map((item) {
          return Container(
            child: Image.asset(item, fit: BoxFit.fill,),
          );
        }).toList(),
      ),
    );
  }
}