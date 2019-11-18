import 'package:flutter/material.dart';

class RowText extends StatelessWidget {

  final String textData1;
  final String textData2;
  final double width;

  RowText(this.textData1, this.textData2, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            textData1,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 10,),
          Text(
            textData2,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}