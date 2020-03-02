import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["。"]),
          TitleTextPage("例子:"),
        ],
      ),
    );
  }
}
