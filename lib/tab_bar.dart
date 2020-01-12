import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/home/home.dart';
import 'package:flutter_demo/tabbar/category/category.dart';
import 'package:flutter_demo/tabbar/cart/cart.dart';
import 'package:flutter_demo/tabbar/mine/mine.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {

  int _currentIndex = 0;

  List _titleLIst = [Text("首页"), Text("分类"), Text("购物车"), Text("我的")];

  List _pageList = [HomePage(), CategoryPage(), CartPage(), MinePage()];

  Widget _homeText = Text("首页");
  Widget _categoryText = Text("分类");
  Widget _cartText = Text("购物车");
  Widget _mineText = Text("我的");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: this._homeText),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: this._categoryText),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: this._cartText),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), title: this._mineText),
        ],
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
