import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';
import 'package:flutter_demo/tabbar/mine/component/widgets.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["网格布局组件。"]),
          TitleTextPage("属性:"),
          ContentTextPage([
            "crossAxisCount: 每行子元素数量",
            "crossAxisSpacing: 子元素左右之间距离",
            "mainAxisSpacing: 子元素上下之间距离",
            "physics: 在滚动组件中GridView默认不可滚动，需要将该属性设置为 new NeverScrollableScrollPhysics()",
          ]),
          TitleTextPage("例子:"),
          GridViewDemo()
        ],
      ),
    );
  }
}

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  bool _b = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 50),
      child: Column(
        children: <Widget>[
          CupertinoButton(
            onPressed: () {
              setState(() {
                _b = !_b;
              });
            },
            child: Text("切换"),
          ),
          _getGridView(_b)
        ],
      )
    );
  }

  // 通过count或builder创建
  Widget _getGridView(bool b) {
    if (b) {
      return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: _images.map((item) {
          return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.asset(item, fit: BoxFit.fill,),
              )
          );
        }).toList(),
      );
    } else {
      return GridView.builder(
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Stack(
            alignment: AlignmentDirectional.center,
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(_images[index], fit: BoxFit.fill,),
                ),
              ),
              Container(
                alignment: Alignment(0.9, -0.95),
                child: GestureDetector(
                  onTap: () {
                    print("点击了关闭Icon: $index");
                    int i = index >= _images.length ? _images.length - 1 : index;
                    setState(() {
                      _images.removeAt(i);
                    });
                  },
                  child: Icon(Icons.cancel, color: Colors.black12,),
                ),
              )
            ],
          );
        },
      );
    }
  }

  List<String> _images = [
    "asset/images/p1.jpg",
    "asset/images/p2.jpg",
    "asset/images/p3.jpg",
    "asset/images/p4.jpg",
    "asset/images/p5.jpg",
    "asset/images/p6.jpg",
  ];
}
