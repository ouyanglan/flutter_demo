import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/home/component/InkIcon.dart';
import 'package:flutter_demo/tabbar/home/component/scroll_bloc.dart';

class XAppBar extends StatefulWidget implements PreferredSizeWidget {

  final Color backgroundColor;

  final double height;

  XAppBar({
    this.backgroundColor: Colors.red,
    this.height: 90,
  });

  @override
  _XAppBarState createState() => _XAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(this.height);
}

class _XAppBarState extends State<XAppBar> {

  double opacity;

  double marginTop;

  double logoHeight = 50;

  double paddingBottom;

  double inputWidth = 0;

  void _initParam() {
    marginTop = 45;
    paddingBottom = 10;
    opacity = 1;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this._initParam();
  }

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<int>(
      stream: bLoc.stream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {

        // 输入框的初始(最大)宽度,  32 = 下方padding的左右各16
        double width = MediaQuery.of(context).size.width - 32;
        // 输入框的最小宽度
        double minWidth = width / 1.5;

        inputWidth = width;
        this._offset(snapshot.data, width, minWidth);
//        this.offset(snapshot.data, inputMaxMarginRight);
        return Container(
          // MediaQueryData.fromWindow(window).padding.top  获取手机顶部信号栏高度
          padding: EdgeInsets.fromLTRB(16, MediaQueryData.fromWindow(window).padding.top + 5, 16, paddingBottom > 10 ? 10 : paddingBottom < 0 ? 0 : paddingBottom),
          color: widget.backgroundColor,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0, marginTop < 5 ? 5 : marginTop > 45 ? 45 : marginTop, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.search, color: Colors.black45),
                      GestureDetector(
                        child: Icon(Icons.add_a_photo, color: Colors.black45),
                        onTap: () => print("点击了相机按钮"),
                      )
                    ],
                  ),
                  width: inputWidth < minWidth ? minWidth : inputWidth,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1)),
                ),
                onTap: () {
                  print('点击了appBar的输入框部分');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Opacity(
                    opacity: opacity > 1 ? 1 : opacity < 0 ? 0 : opacity,
                    child: Container(
                      height: logoHeight,
                      child: Image.asset(
                        "asset/images/jd_logo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: logoHeight,
                    child: Row(
                      children: <Widget>[
                        InkIcon(0xe602, "rili", "日历", inkIconOnTap: () {
                          print("日历");
                        }),
                        SizedBox(
                          width: 10,
                        ),
                        InkIcon(0xe60b, "saomiao", "扫啊扫",
                            inkIconOnTap: () {
                              print("点击了扫啊扫");
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        InkIcon(0xe768, "message", "消息",
                            inkIconOnTap: () {
                              print('消息');
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // 控制输入框,logo的移动
  void _offset(int location, double width, double minWidth) {
    if (location != null) {
      inputWidth = width - location;
      opacity = -(location / (width - minWidth)) + 1;
      marginTop = 45 - (location - (width - minWidth));
      // 10: paddingBottom初始值(最大值);
      // 20: marginTop的最小值5 + paddingBottom初始值10 + 5(让padding提前5个位移动);
      // marginTop: 当marginTop小于0的时候paddingBottom就会改变, 产生移动效果;
      paddingBottom = 10  + (marginTop - 20);
    }
  }
}
