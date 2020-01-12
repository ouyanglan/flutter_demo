import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_detail/component/product_info.dart';

class IntroducePage extends StatefulWidget {
  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {

  @override
  void initState() {
    super.initState();

    _images = [
      "asset/images/p1.jpg",
      "asset/images/p2.jpg",
      "asset/images/p3.jpg",
      "asset/images/p4.jpg",
      "asset/images/p5.jpg",
      "asset/images/p6.jpg",
    ];
  }

  List<String> _images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProductInfo(),
        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            children: <Widget>[
              Container(
                width: 3,
                height: 20,
                color: Colors.red,
              ),
              SizedBox(width: 10,),
              RichText(
                text: TextSpan(
                    text: "选择 ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "HUAWEI",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)
                      ),
                      TextSpan(
                          text: " P30 Pro 的6大理由"
                      ),
                    ]
                ),
              )
            ],
          ),
        ),
        Divider(height: 2, color: Colors.deepOrange, indent: 3, endIndent: 3,),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: _images.map((item) {
              return Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(item, fit: BoxFit.fill,),
                  )
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
