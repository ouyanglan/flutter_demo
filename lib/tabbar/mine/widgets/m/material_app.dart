import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class MaterialAppPage extends StatefulWidget {
  @override
  _MaterialAppPageState createState() => _MaterialAppPageState();
}

class _MaterialAppPageState extends State<MaterialAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialApp"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["程序入口widget。"]),
        ],
      ),
    );
  }
}
