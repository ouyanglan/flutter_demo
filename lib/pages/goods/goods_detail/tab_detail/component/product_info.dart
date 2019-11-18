import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: width / 3,
                child: Divider(height: 1, color: Colors.black54, indent: 5,),
              ),
              XText("商品信息", fontWeight: FontWeight.normal, color: Colors.black45,),
              Container(
                width: width / 3,
                child: Divider(height: 1, color: Colors.black54, endIndent: 5,),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.centerLeft,
            child: XText("温馨提示:", fontSize: 14,),
          ),
          Container(
            width: width,
            child: XText(
              "为了保障正常用户的购机需求, 避免黄牛刷单抢货, 抢占正常用户资源, 为了保障正常用户的购机需求, 避免黄牛刷单抢货, 抢占正常用户资源,为了保障正常用户的购机需求, 避免黄牛刷单抢货, 抢占正常用户资源,为了保障正常用户的购机需求, 避免黄牛刷单抢货, 抢占正常用户资源,为了保障正常用户的购机需求, 避免黄牛刷单抢货, 抢占正常用户资;",
              overflow: TextOverflow.visible,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
