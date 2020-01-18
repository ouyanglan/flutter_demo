import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class ScrollConfigurationPage extends StatefulWidget {
  @override
  _ScrollConfigurationPageState createState() => _ScrollConfigurationPageState();
}

class _ScrollConfigurationPageState extends State<ScrollConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollConfiguration"),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child:  ListView(),
      )
    );
  }
}
