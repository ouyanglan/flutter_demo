import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/tabbar/home/component/list_goods_bloc.dart';
import 'dart:math';

class ListGoods extends StatefulWidget {
  @override
  _ListGoodsState createState() => _ListGoodsState();
}

class _ListGoodsState extends State<ListGoods> {

  int listTabIndex = 0;

  List<Widget> _goodsList = new List();

  double top = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: listGoodsBLoc.stream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        int index = snapshot.data;
        if (listTabIndex != index) {
          listTabIndex = index;
          this.setGoodsList(index, context);
        }
        return Container(
          color: Color.fromRGBO(245, 245, 245, 1),
          child: Stack(
            children: <Widget>[
              GridView.builder(
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: _goodsList.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: <Widget>[
                      _goodsList[index],
                      Container(
                        alignment: Alignment(0.9, -0.95),
                        child: GestureDetector(
                          onTap: () {
                            print("点击了关闭Icon: $index");
                            int i = index >= _goodsList.length ? _goodsList.length - 1 : index;
                            setState(() {
                              _goodsList.removeAt(i);
                            });
                          },
                          child: Icon(Icons.cancel, color: Colors.black12,),
                        ),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }

  void setGoodsList(int index, BuildContext context) {
    List<int> list = new List();
    // 生成一组随机数
    while (true) {
      int random = Random().nextInt(20) + 1;
      if (list.indexOf(random) == -1) {
        list.add(random);
        if (list.length == 20) {
          break;
        }
      }
    }
    List<Widget> goodsList = new List();
    // 根据随机数打乱图片顺序
    list.forEach((item) {
      goodsList.add(
        // stack的子元素按先后顺序显示, 写在前面的子元素会被后面的元素覆盖.
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/goods_detail", arguments: item),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              // stretch: 让子组件铺满
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Image.asset("asset/images/$item.jpg", fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "这是一段简单介绍商品信息的文字;",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "￥ 6999.00",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => print("点击了看相似"),
                            child: Container(
                              width: 45,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text(
                                "看相似",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 11
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    // 在构建期间setState会报错, Future.delayed可以避免setState报错:  setState() or markNeedsBuild() called during build
    Future.delayed(Duration(milliseconds: 0)).then((e) {
      setState(() {
        _goodsList = goodsList;
      });
    });
  }
}

