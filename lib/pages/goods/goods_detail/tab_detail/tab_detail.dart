import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/component/top_buttons.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/component/introduce.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/component/specification.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/component/after_sales.dart';


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    super.initState();

    print("详情页加载了");
    _buttonTextList = ["商品介绍", "规格参数", "包装售后"];

    pageList = [
      IntroducePage(),
      SpecificationPage(),
      AfterSales(),
    ];
  }

  List<String> _buttonTextList;

  List<Widget> pageList;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          // 顶部三个按钮
          TopButtons(_buttonTextList, onTap: (index) {
            print("下标 =============: $index");
            setState(() {
              _index = index;
            });
          },),
          // 商品介绍
          IndexedStack(
            children: pageList,
            index: _index,
          ),
        ],
      ),
    );
  }
}
