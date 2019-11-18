import 'package:flutter/material.dart';

class PriceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
                text: "￥",
                style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w700),
                children: <TextSpan>[
                  TextSpan(
                    text: "4588",
                    style: TextStyle(fontSize: 30)
                  ),
                  TextSpan(
                    text: ".00"
                  )
                ]
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                PColumn(0xe603, "price", "降价通知", onTap: () {
                  print("点击了降价通知");
                }),
                SizedBox(width: 20,),
                PColumn(0xf0321, "attention", "48.3万", onTap: () {
                  print("点击了关注");
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PColumn extends StatelessWidget {

  final int codePoint;

  final String fontFamily;

  final String text;

  final Function onTap;

  PColumn(this.codePoint, this.fontFamily, this.text, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Icon(IconData(codePoint, fontFamily: fontFamily)),
          SizedBox(height: 3,),
          Text(text)
        ],
      ),
    );
  }
}
