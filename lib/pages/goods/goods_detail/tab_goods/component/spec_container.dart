import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

class SpecContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: XText("规格", fontSize: 16, color: Colors.black,)
          ),
          XColumn(codePoint: 0xe654, fontFamily: "ss_time", tData: "上市时间", bData: "2019年11月"),
          XColumn(codePoint: 0xf004a, fontFamily: "pm_cc", tData: "屏幕尺寸", bData: "6.62英寸 备..."),
          XColumn(codePoint: 0xe685, fontFamily: "battery", tData: "电池容量", bData: "4200mAh (..."),
          XColumn(codePoint: 0xe62d, fontFamily: "resolution", tData: "分辨率", bData: "FHD+ 2340x...")
        ],
      ),
    );
  }
}

class XColumn extends StatelessWidget {

  XColumn({
    this.codePoint,
    this.fontFamily,
    this.tHeight = 20,
    this.tData,
    this.bHeight = 5,
    this.bData,
    this.fontSize = 13,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black54
  });

  final int codePoint;

  final String fontFamily;

  final double tHeight;

  final double bHeight;

  final String tData;

  final String bData;

  final double fontSize;

  final FontWeight fontWeight;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(IconData(codePoint, fontFamily: fontFamily)),
          SizedBox(height: tHeight,),
          XText(tData, fontSize: 14,),
          SizedBox(height: bHeight,),
          XText(bData, fontSize: fontSize, fontWeight: fontWeight, color: color),
        ],
      ),
    );
  }
}