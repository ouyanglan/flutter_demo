import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/price_container.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/top_swiper.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/spec_container.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/activity_container.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/select_container.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/comment_container.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/gd_app_bar_bloc.dart';

class TabGoods extends StatefulWidget {
  @override
  _TabGoodsState createState() => _TabGoodsState();
}

class _TabGoodsState extends State<TabGoods> {

  ScrollController _scrollController;

  List<String> images = [
    "asset/images/phone1.jpg",
    "asset/images/phone2.jpg",
    "asset/images/phone3.jpg",
    "asset/images/phone4.jpg",
    "asset/images/phone5.jpg",
    "asset/images/phone6.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("综合详情页加载了");

//    gdAppBarBLoc.create();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      gdAppBarBLoc.add(_scrollController.position.pixels);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: <Widget>[
        TopSwiper(images: this.images),
        PriceContainer(),
        Container(
          height: 120,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            "华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+128GB天空之境全网通版双4G手机",
            maxLines: 3,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        // 分割线
        Divider(height: 1, indent: 0, color: Colors.black12,),
        // 规格块
        SpecContainer(),
        SizedBox(height: 10,),
        // 优惠活动块
        ActivityContainer(),
        SizedBox(height: 10,),
        // 已选送货块
        SelectContainer(),
        // 评价块
        CommentContainer(),
        SizedBox(height: 10,),
      ],
    );
  }
}
