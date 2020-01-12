import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XRaisedButton.dart';
import 'package:flutter_demo/components/XText.dart';

class BottomBar extends StatelessWidget {

  final int goodsId;

  BottomBar(this.goodsId);

  @override
  Widget build(BuildContext context) {
    print("goodsId = $goodsId");
    double width = (MediaQuery.of(context).size.width / 5) * 2;
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 80,
      decoration: BoxDecoration(
        border: BorderDirectional(top: BorderSide(color: Colors.black12)) // top 加个边框
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: PColumn(0xe643, "kefu", "联系客服"),
            onTap: () => print("点击了联系客服"),
          ),
          GestureDetector(
            child: PColumn(0xe71b, "store", "店铺"),
            onTap: () => print("点击了店铺"),
          ),
          GestureDetector(
            child: PColumn(0xe610, "cart", "购物车"),
            onTap: () => print("点击了购物车"),
          ),
          XRaisedButton(
            text: "立即抢购",
            onPressed: () => print("点击了立即抢购"),
            textColor: Colors.white,
            radius: width / 5,
            buttonBorderColor: Colors.red,
            buttonColor: Colors.red,
            height: 50,
            width: width,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

class PColumn extends StatelessWidget {

  final int codePoint;

  final String fontFamily;

  final String data;

  PColumn(this.codePoint, this.fontFamily, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(IconData(codePoint, fontFamily: fontFamily), size: 40, color: Colors.black87,),
        SizedBox(height: 10,),
        XText(data, fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black54,)
      ],
    );
  }
}
