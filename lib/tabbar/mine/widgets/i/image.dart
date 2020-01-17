import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/mine/component/content_text.dart';
import 'package:flutter_demo/tabbar/mine/component/title_text.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: ListView(
        children: <Widget>[
          TitleTextPage("简介:"),
          ContentTextPage(["图片，Image.asset()访问本地图片，需要配置yaml，Image.network()访问远程图片，用ClipRRect可以实现图片圆角。"]),
          TitleTextPage("例子:"),
          ImageDemo()
        ],
      ),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: Image.asset("asset/images/p5.jpg", fit: BoxFit.fill,),
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.asset("asset/images/p5.jpg", fit: BoxFit.scaleDown,),
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg", fit: BoxFit.fill,),
          ),
          SizedBox(height: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset("asset/images/p5.jpg", fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
