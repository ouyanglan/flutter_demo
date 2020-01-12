import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XText.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_recommend/component/top_region.dart';
import 'package:flutter_demo/tabbar/home/component/list_goods.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("推荐页面加载了");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: ListView(
        children: <Widget>[
          TopRegion(),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 13, 20),
            child: ListGoods(),
          )
        ],
      ),
    );
  }
}
