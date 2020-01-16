import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/home/component/row_text.dart';
import 'package:flutter_demo/tabbar/home/component/row_images.dart';
import 'package:flutter_demo/tabbar/home/component/row_text_container.dart';

class HomeCard extends StatelessWidget {

  final List<String> images1 = ["asset/images/alienware.jpg", "asset/images/book.jpg", "asset/images/clothes.jpg", "asset/images/display.jpg"];
  final List<String> images2 = ["asset/images/phone02.jpg", "asset/images/clothes.jpg", "asset/images/phone01.jpg","asset/images/computer.png"];
  final List<String> images3 = ["asset/images/phone01.jpg", "asset/images/alienware.jpg", "asset/images/tissot.jpg", "asset/images/ipad.jpg"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "**秒杀",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 10,),
                      Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.red
                            ),
                            child: Text(
                              "14点场",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                              ),
                            ),
                          ),
                          Container(
                            alignment: new Alignment(0.87, 0),
                            width: (MediaQuery.of(context).size.width - 50)/3.8,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 1, color: Colors.red)
//                        color: Colors.blue
                            ),
                            child: Text(
                              "01:59:23",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  RowTextAndContainer("发现好货", "亚瑟士新品 >", (MediaQuery.of(context).size.width - 50)/3.8, Colors.greenAccent),
                ],
              ),
            ),
            RowImages(images1),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RowTextAndContainer("每日特价", "鞋服原产地 >", (MediaQuery.of(context).size.width - 50)/3.8, Colors.orange),
                  RowText("新品首发", "排行榜", (MediaQuery.of(context).size.width - 50)/2.2),
                ],
              ),
            ),
            RowImages(images2),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RowTextAndContainer("品牌闪购", "汇大牌好价 >", (MediaQuery.of(context).size.width - 50)/3.8, Colors.purple),
                  RowText("**视频", "逛好店", (MediaQuery.of(context).size.width - 50)/2.2),
                ],
              ),
            ),
            RowImages(images3),
          ],
        ),
      ),
    );
  }
}
