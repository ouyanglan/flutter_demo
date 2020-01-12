import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/widgets.dart';
import 'package:flutter_demo/routers/routers.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with SingleTickerProviderStateMixin  {

  List<Widget> list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: ListView(
        children: el.WIDGET_LIST.asMap().keys.map((index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, el.WIDGET_LIST[index].path),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(color: Colors.black, width: 1))
              ),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(el.WIDGET_LIST[index].name),
            ),
          );
        }).toList(),
      ),
    );
  }
}
