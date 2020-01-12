import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/home/component/app_bar.dart';
import 'package:flutter_demo/tabbar/home/component/scroll_bloc.dart';
import 'package:flutter_demo/tabbar/home/component/home_card.dart';
import 'package:flutter_demo/tabbar/home/component/tableSwiper.dart';
import 'package:flutter_demo/tabbar/home/component/oval_bottom_border_clipper.dart';
import 'package:flutter_demo/tabbar/home/component/topSwiper.dart';
import 'package:flutter_demo/tabbar/home/component/listTab.dart';
import 'package:flutter_demo/tabbar/home/component/list_goods.dart';
import 'package:flutter_demo/tabbar/home/component/list_goods_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin  {


  ScrollController _scrollController = new ScrollController();

  AnimationController controller;
  CurvedAnimation curvedAnimation;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
    controller.dispose();
    bLoc.close();
    listGoodsBLoc.close();
  }

  Color indexColor = Colors.red;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bLoc.create();
    listGoodsBLoc.create();
    _scrollController.addListener(() {
      bLoc.add(_scrollController.position.pixels.toInt());
    });

    controller = new AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this);
    curvedAnimation = new CurvedAnimation(parent: controller, curve: Curves.decelerate)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          this.indexColor = Colors.red;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XAppBar(),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipOval(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: 150,
                  color: Colors.red,
                ),
              ),
              TopSwiper()
            ],
          ),
          TableSwiper(),
          HomeCard(),
          ListTab(),
          ListGoods(),
        ],
      ),
    );
  }
}







