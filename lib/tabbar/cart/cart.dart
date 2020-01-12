import 'package:flutter/material.dart';
import 'package:flutter_demo/tabbar/cart/component/app_bar.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                color: Colors.red,
                alignment: Alignment.center,
                child: Text("123"),
              ),
              Opacity(
                opacity: opacity < 0 ? 0 : opacity > 1 ? 1 : opacity,
                child: AppBar(
                  title: Text("浮动"),
                ),
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            if (opacity > 0) {
              opacity -= 0.1;
            } else {
              opacity += 0.1;
            }
          });
        },
      ),
    );
  }
}

/*
TabBarView(
        controller: _tabController,
        children: <Widget>[
          ADemo(key: UniqueKey(),),
          BDemo(key: UniqueKey(),),
        ],
      )
 */