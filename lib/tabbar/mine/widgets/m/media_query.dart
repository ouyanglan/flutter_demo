import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class MediaQueryPage extends StatefulWidget {
  @override
  _MediaQueryPageState createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["MediaQuery。"]),
          TitleTextPage("属性:"),
          ContentTextPage([

          ]),
          TitleTextPage("例子:"),
          MediaQueryDemo()
        ],
      ),
    );
  }
}

class MediaQueryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
