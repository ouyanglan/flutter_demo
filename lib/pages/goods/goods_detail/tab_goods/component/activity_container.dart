import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shopping_mall/components/XRaisedButton.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

class ActivityContainer extends StatelessWidget {

  final double _width1 = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          // 优惠
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PContainer("优惠", this._width1),
              Container(
                width: MediaQuery.of(context).size.width - this._width1,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - this._width1,
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          PRow(
                            "白条",
                            "随机立减最高99元",
                            MediaQuery.of(context).size.width - this._width1 - 120,
                          ),
                          Container(
                            width: 30,
                            child:  IconButton(
                              iconSize: 25,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.all(0),
                              icon: Icon(IconData(0xe60f, fontFamily: "more"), color: Colors.black54),
                              onPressed: () => print("点击了更多"),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    PRow(
                      "赠品",
                      "体验卡免费领, 多款APP免流, 超大超大超级大",
                      MediaQuery.of(context).size.width - this._width1 - 120,
                    ),
                    SizedBox(height: 10,),
                    PRow(
                      "优惠套装",
                      "该商品共有1个优惠套装",
                      MediaQuery.of(context).size.width - this._width1 - 120,
                    ),
                    SizedBox(height: 10,),
                    Divider(height: 1, color: Colors.black38,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          // 活动
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PContainer("活动", this._width1),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    width: MediaQuery.of(context).size.width - this._width1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - this._width1 - 60,
                          child: XText("手机狂欢, 领劵更优惠, 点我查看更多", fontWeight: FontWeight.normal,),
                        ),
                        Container(
                          width: 30,
                          child:  IconButton(
                            iconSize: 25,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(0),
                            icon: Icon(IconData(0xe60f, fontFamily: "more"), color: Colors.black54),
                            onPressed: () => print("点击了更多"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  SizedBox(width: _width1,),
                  XRaisedButton(
                    text: "以旧换新",
                    onPressed: () => print("点击了以旧换新"),
                    textColor: Colors.lightBlue,
                    radius: 5,
                    buttonBorderColor: Colors.lightBlue,
                    buttonColor: Colors.white,
                    height: 25,
                  ),
                  SizedBox(width: 10,),
                  XRaisedButton(
                    text: "高价回收",
                    onPressed: () => print("点击了高价回收"),
                    textColor: Colors.lightBlue,
                    radius: 5,
                    buttonBorderColor: Colors.lightBlue,
                    buttonColor: Colors.white,
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PRaisedButton extends StatelessWidget {

  final String data;

  final Function onPressed;

  PRaisedButton(this.data, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: RaisedButton(
        onPressed: onPressed,
        // 按钮背景颜色
        color: Colors.white,
        shape: RoundedRectangleBorder(
          // 按钮边框
            side: BorderSide(color: Colors.lightBlue),
            // 按钮圆角
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Text(
          data,
          style: TextStyle(
              color: Colors.lightBlue
          ),
        ),
      ),
    );
  }
}


class PRow extends StatelessWidget {

  final String lData;

  final String rData;

  final double tWidth;

  final double lFontSize;

  final double rFontSize;

  PRow(this.lData, this.rData, this.tWidth, {this.lFontSize = 12, this.rFontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Color.fromRGBO(255, 114, 86, 0.2),
          ),
          alignment: Alignment.center,
          height: 20,
          child: XText(lData, color: Color.fromRGBO(255, 114, 86, 1), fontSize: lFontSize,),
        ),
        SizedBox(width: 20,),
        Container(
          width: tWidth,
          child: XText(rData, fontSize: rFontSize, fontWeight: FontWeight.w500,),
        )
      ],
    );
  }
}

class PContainer extends StatelessWidget {

  final double width;

  final String data;

  PContainer(this.data, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      alignment: Alignment.center,
      child: XText(data),
    );
  }
}

