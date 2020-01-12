import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/home/component/list_goods_bloc.dart';

class ListTab extends StatefulWidget {
  @override
  _ListTabState createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> with SingleTickerProviderStateMixin {

  final List<xTab> tabList = [
    xTab("精选", "为您推荐"),
    xTab("萌十", "萌物来袭"),
    xTab("时尚", "没装穿搭"),
    xTab("电器", "3C电器"),
    xTab("超市", "百货生鲜"),
    xTab("全球", "海囤全球"),
    xTab("生活", "居家日用"),
    xTab("直播", "专属福利"),
  ];

  int _index = 0;

  AnimationController controller;
  CurvedAnimation curvedAnimation;
//  Color indexColor = Colors.red;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    curvedAnimation = new CurvedAnimation(parent: controller, curve: Curves.decelerate);
    // 初始化时执行一次动画, 避免默认选中的第一个tab无下滑线.
    controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
//      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: tabList.asMap().keys.map((index) {
          return GestureDetector(
            onTap: () {
              listGoodsBLoc.add(index);
              setState(() {
                _index = index;
              });
              // from: 0.0  ==>>> 每次都从新开始动画
              controller.forward(from: 0.0);
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 5.4,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      tabList[index].getTitle(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: _index == index ? FontWeight.w600 : FontWeight.w500,
                          fontSize: 20,
                          color: _index == index ? Colors.red : Colors.black
                      ),
                    ),
                  ),
                  Text(
                    tabList[index].getDesc(),
                    style: TextStyle(
                      color: _index == index ? Colors.redAccent : Colors.black54,
                      fontSize: 12
                    ),
                  ),
                  SizeTransition(
                    axis: Axis.horizontal,
                    sizeFactor: curvedAnimation,
                    child: Container(
                      color: this._index == index ? Colors.red : Colors.white,
                      width: 30,
                      height: 3,
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}



class xTab {

  String title;

  String desc;

  xTab(String title, String desc) {
    this.title = title;
    this.desc = desc;
  }

  String getTitle() {
    return this.title;
  }

  String getDesc() {
    return this.desc;
  }
}