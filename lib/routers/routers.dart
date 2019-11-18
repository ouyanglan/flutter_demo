import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/goods_detail.dart';
import 'package:flutter_shopping_mall/tab_bar.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/tab_goods.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_detail/tab_detail.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_comment/tab_comment.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_recommend/tab_recommend.dart';

final routers = {
  "/": (context) => TabBarPage(),
  "/goods_detail": (context, {arguments}) => GoodsDetail(goodsId: arguments),
  "/tab_goods": (context) => TabGoods(),
  "/detail": (context) => DetailPage(),
  "/evaluation": (context) => EvaluationPage(),
  "/recommend": (context) => RecommendPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};