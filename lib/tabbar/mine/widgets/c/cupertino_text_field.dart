import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class CupertinoTextFieldPage extends StatefulWidget {
  @override
  _CupertinoTextFieldPageState createState() => _CupertinoTextFieldPageState();
}

class _CupertinoTextFieldPageState extends State<CupertinoTextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoSwitch"),
      ),
      body:  ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["ios风格switch组件。"]),
          TitleTextPage("属性:"),
          ContentTextPage([
            "value: true（开）， false（关）。",
            "onChanged：开关状态发生改变时触发，接收参数为改变的值。",
            "activeColor：打开状态下的颜色。"
          ]),
          TitleTextPage("例子:"),
          CupertinoTextFieldDemo()
        ],
      ),
    );
  }
}

class CupertinoTextFieldDemo extends StatefulWidget {
  @override
  _CupertinoTextFieldDemoState createState() => _CupertinoTextFieldDemoState();
}

class _CupertinoTextFieldDemoState extends State<CupertinoTextFieldDemo> {

  TextEditingController _textController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController = TextEditingController(text: "初始值");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTextField(
        controller: _textController,
        prefix: Icon(Icons.search)
      ),
    );
  }
}
