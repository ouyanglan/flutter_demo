import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class WidgetsAppPage extends StatefulWidget {
  @override
  _WidgetsAppPageState createState() => _WidgetsAppPageState();
}

class _WidgetsAppPageState extends State<WidgetsAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetsApp"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["WidgetsApp。"]),
          TitleTextPage("属性:"),
          ContentTextPage([

          ]),
          TitleTextPage("例子:"),
        ],
      ),
    );
  }
}
