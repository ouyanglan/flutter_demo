import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/activity_container.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

class SelectContainer extends StatefulWidget {
  @override
  _SelectContainerState createState() => _SelectContainerState();
}

class _SelectContainerState extends State<SelectContainer> {

  final double _width = 80;

  final double _height1 = 60;
  final double _height2 = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          // 已选
          Row(
            children: <Widget>[
              Container(
                width: _width,
                // 高度加上SizedBox的10个间隔
                height: _height1 + 10,
                alignment: Alignment.topCenter,
                child: XText("已选"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                width: MediaQuery.of(context).size.width - this._width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - this._width - 60,
                          height: _height1,
                          child: XText("亮黑色, 8GB+256GB, 5G SA/NSA双模, 0.6kg, 1件, 可选服务", fontWeight: FontWeight.normal, overflow: TextOverflow.visible,),
                        ),
                        Container(
                          width: 30,
                          height: _height1,
                          child:  IconButton(
                            iconSize: 25,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.all(0),
                            icon: Icon(IconData(0xe60f, fontFamily: "more"), color: Colors.black54),
                            onPressed: () => print("点击了已选更多"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(height: 1, color: Colors.black38,)
                  ],
                )
              ),
            ],
          ),
          SizedBox(height: 10,),
          // 送至
          Row(
            children: <Widget>[
              Container(
                width: _width,
                // 高度加上SizedBox的10个间隔
                height: _height2 * 2,
                alignment: Alignment.topCenter,
                child: XText("送至"),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  width: MediaQuery.of(context).size.width - this._width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - this._width - 60,
                            height: _height2,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, color: Colors.red,),
                                XText("上海市浦东新区东旭公寓", fontWeight: FontWeight.normal)
                              ],
                            ),
                          ),
                          Container(
                            width: 30,
                            height: _height1,
                            child:  IconButton(
                              iconSize: 25,
                              padding: EdgeInsets.all(0),
                              icon: Icon(IconData(0xe60f, fontFamily: "more"), color: Colors.black54),
                              onPressed: () => print("点击了送至更多"),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: _height2,
                        width: MediaQuery.of(context).size.width - this._width,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - this._width - 50,
                              child: RichText(
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  text: "现货",
                                  style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ",  10:00前下单, 预计下午18:00前送达",
                                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
                                    )
                                  ]
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PContainer("京东发货&售后"),
                    PContainer("7天无理由退货"),
                    PContainer("京尊达"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PContainer("京准达"),
                    PContainer("211限时达"),
                    PContainer("不可使用京劵东劵", icon: Icon(Icons.error_outline, color: Colors.black38,),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PContainer extends StatelessWidget {

  final String data;

  final Icon icon;

  PContainer(this.data, {this.icon = const Icon(Icons.check_circle_outline, color: Colors.deepOrangeAccent,)});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 6,),
          XText(data, fontSize: 14, color: Colors.black38, fontWeight: FontWeight.normal)
        ],
      ),
    );
  }
}

