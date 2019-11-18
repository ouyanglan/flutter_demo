import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/bottom_bar.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/gd_app_bar.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/tab_goods.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/tab_detail.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_comment/tab_comment.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_recommend/tab_recommend.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/gd_app_bar_bloc.dart';


class GoodsDetail extends StatefulWidget {
  @override
  _GoodsDetailState createState() => _GoodsDetailState();

  int goodsId;

  GoodsDetail({this.goodsId});
}

class _GoodsDetailState extends State<GoodsDetail> {

  List<Widget> tabs;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    print("商品id = ${widget.goodsId}");
    gdAppBarBLoc.create();

    tabs = new List();
    tabs.add(TabGoods());
    tabs.add(DetailPage());
    tabs.add(EvaluationPage());
    tabs.add(RecommendPage());
  }

  @override
  void dispose() {
    super.dispose();
    gdAppBarBLoc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(245, 245, 245, 1),
        child: Stack(
          children: <Widget>[
            // IndexedStack会一次性加载完tabs中的页面, 使用PageView则每次切换都重新加载tabs中的页面; todo
            IndexedStack(
              children: tabs,
              index: _index,
            ),
            GdAppBar(
              onTapBack: (index) {
                if (index != _index) {
                  setState(() {
                    _index = index;
                  });
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(widget.goodsId), // 底部联系客服,店铺,购物车,立即抢购等按钮
    );
  }
}
