import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/tabbar/mine/component/content_text.dart';
import 'package:flutter_shopping_mall/tabbar/mine/component/title_text.dart';

class AnimatedListStatePage extends StatefulWidget {
  @override
  _AnimatedListStatePageState createState() => _AnimatedListStatePageState();
}

class _AnimatedListStatePageState extends State<AnimatedListStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedListState"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("AnimatedListState简介:"),
          ContentTextPage(["滚动容器的状态，用于在插入或删除项目时对其进行动画处理。"]),
          TitleTextPage("属性介绍:"),
          ContentTextPage([

          ]),
          TitleTextPage("演示:"),
        ],
      ),
    );
  }
}

class AnimatedListStateDemo extends StatefulWidget {
  @override
  _AnimatedListStateDemoState createState() => _AnimatedListStateDemoState();
}

class _AnimatedListStateDemoState extends State<AnimatedListStateDemo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
