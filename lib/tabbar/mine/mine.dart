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
          return Card(
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, el.WIDGET_LIST[index].path),
              leading: Text(el.WIDGET_LIST[index].name),
            ),
          );
        }).toList(),
      ),
    );
  }
}
