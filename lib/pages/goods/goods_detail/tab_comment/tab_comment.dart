import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/components/XText.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_comment/component/top_region.dart';
import 'package:flutter_shopping_mall/pages/goods/goods_detail/tab_goods/component/comment_container.dart';

class EvaluationPage extends StatefulWidget {
  @override
  _EvaluationPageState createState() => _EvaluationPageState();
}

class _EvaluationPageState extends State<EvaluationPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("评价页面加载了");

    for (int i = 1; i <= 15; i++) {
      O o = new O()
        ..setUsername("张$i")
        ..setStarCount(5-i)
        ..setContent("物流很快, 外观很漂亮, 像素很高,物流很快, 外观很漂亮, 像素很高物流很快, 外观很漂亮, 像素很高, 外观很漂亮, 像素很高, 外观很漂亮, 像素很高")
        ..setImages(_images)
        ..setProductModel("亮黑色, 8GB+256GB");
      _list.add(o);
    }
  }

  List<String> _images = [
    "asset/images/phone1.jpg",
    "asset/images/phone2.jpg",
    "asset/images/phone1.jpg",
    "asset/images/phone2.jpg",
    "asset/images/phone1.jpg",
  ];

  List<O> _list = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: ListView(
          children: <Widget>[
            TopRegion(
              onCurrentFlag: (bool flag) {
                print("只看当前商品: $flag");
              },
              tagOnTap: (int index) {
                print("点击了第${index+1}个tag");
              },
            ),
            Column(
              children: _list.map((item) {
                return CommentRegion(
                  username: item.getUsername(),
                  starCount: item.getStarCount(),
                  content: item.getContent(),
                  images: item.getImages(),
                  productModel: item.getProductModel(),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => print("点击了问"),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
          height: 60,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(30)),
//            color: Color.fromRGBO(255, 114, 86, 0.2),
          ),
          child: XText("问", color: Colors.lightBlue, fontSize: 30,),
        ),
      ),
    );
  }
}
