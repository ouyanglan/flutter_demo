import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XText.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_goods/component/gd_app_bar_bloc.dart';
import 'dart:ui';

// 创建一个回调函数
typedef void OnTapBack(int index);

class GdAppBar extends StatefulWidget {
  @override
  _GdAppBarState createState() => _GdAppBarState();

  final OnTapBack onTapBack;

  GdAppBar({this.onTapBack});
}

class _GdAppBarState extends State<GdAppBar> {

  double opacity = 0;

  List<String> _listTitle = ["商品", "详情", "评价", "推荐"];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: gdAppBarBLoc.stream,
        builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
          if (snapshot.data != null) {
            if (snapshot.data > 0) {
              opacity = snapshot.data / 400;
            }
            if (snapshot.data <= 0) {
              opacity = 0;
            }
          }
          return Opacity(
            opacity: opacity > 1 ? 1 : opacity,
            child: Container(
              height: 80,
              padding: EdgeInsets.fromLTRB(10, MediaQueryData.fromWindow(window).padding.top + 5, 10, 10),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/images/gd.jpg"), fit: BoxFit.fill),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(IconData(0xe61a, fontFamily: "left"), color: Colors.white,),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _listTitle.asMap().keys.map((index) {
                      return PColumn(_listTitle[index], _index == index, onTap: () {
                        setState(() {
                          print(index);
                          _index = index;
                          if (index != 0) {
                            opacity = 1;
                          }
                          // 通过回调函数返回下标
                          widget.onTapBack(index);
                          // 定义一个 *router* list, 根据点击的下标跳转到对应页面 todo
                        });
                      });
                    }).toList()
                  ),
                  Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(IconData(0xe6ae, fontFamily: "share"), color: Colors.white,),
                          onTap: () => print("点击了分享图标"),
                        ),
                        SizedBox(width: 15,),
                        GestureDetector(
                          child: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                          onTap: () => print("点击了更多图标"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}

class PColumn extends StatelessWidget {

  final String data;

  final bool showFlag;

  final Function onTap;

  PColumn(this.data, this.showFlag, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 5, 15, 0),
            height: 35,
            decoration: BoxDecoration(
                border: showFlag ? BorderDirectional(bottom: BorderSide(color: Colors.white, width: 4)) : null
            ),
            child: XText(data, color: Colors.white, fontSize: 20, fontWeight: showFlag ? FontWeight.w600 : FontWeight.normal,),
          ),
        ),
      ],
    );
  }
}

