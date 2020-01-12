import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class CupertinoNavigationBarPage extends StatefulWidget {
  @override
  _CupertinoNavigationBarPageState createState() => _CupertinoNavigationBarPageState();
}

class _CupertinoNavigationBarPageState extends State<CupertinoNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoFullscreenDialogTransition"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["全屏对话框。"]),
          TitleTextPage("属性:"),
          ContentTextPage([
            "animation: 动画。",
          ]),
          TitleTextPage("例子:"),
          CupertinoNavigationBarDemo()
        ],
      ),
    );
  }
}

class CupertinoNavigationBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
