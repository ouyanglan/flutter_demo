import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XRaisedButton.dart';
import 'package:flutter_demo/components/XText.dart';

class CommentContainer extends StatefulWidget {
  @override
  _CommentContainerState createState() => _CommentContainerState();
}

class _CommentContainerState extends State<CommentContainer> {

  List<String> _images = [
    "asset/images/phone1.jpg",
    "asset/images/phone2.jpg",
    "asset/images/phone1.jpg",
    "asset/images/phone2.jpg",
    "asset/images/phone1.jpg",
  ];

  List<O> _list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < 5; i++) {
      O o = new O()
      ..setUsername("张$i")
      ..setStarCount(5-i)
      ..setContent("物流很快, 外观很漂亮, 像素很高,物流很快, 外观很漂亮, 像素很高物流很快, 外观很漂亮, 像素很高, 外观很漂亮, 像素很高, 外观很漂亮, 像素很高")
      ..setImages(_images)
      ..setProductModel("亮黑色, 8GB+256GB");
      _list.add(o);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          TopRow("  评价", " 1.9万+", "好评度 98%"),
          Divider(height: 1, color: Colors.black38,),
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
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              XRaisedButton(
                text: "查看全部评价",
                onPressed: () => print("点击了查看全部评价"),
                buttonColor: Colors.white,
                radius: 20,
              ),
              SizedBox(width: 20,),
              XRaisedButton(
                text: "购买咨询",
                onPressed: () => print("点击了购买咨询"),
                buttonColor: Colors.white,
                radius: 20,
              ),
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

class CommentRegion extends StatelessWidget {

  final String username;

  final int starCount;

  final String content;

  final List<String> images;

  final String productModel;

  CommentRegion({
    @required this.username,
    @required this.starCount,
    @required this.content,
    @required this.images,
    @required this.productModel,
  });

  Widget _getStart(int starCount) {
    List<Widget> list = new List();
    for (int i = 0; i < starCount; i++) {
      list.add(Icon(Icons.star, color: Colors.deepOrangeAccent, size: 18,));
    }
    return Container(
      width: 200,
      child: Row(
          children: list
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.account_circle, size: 40, color: Color.fromRGBO(255, 114, 86, 0.6),),// 头像
                    SizedBox(width: 10,),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          alignment: Alignment.centerLeft,
                          child: XText(username, fontWeight: FontWeight.w500,), // 用户名,
                        ),
                        _getStart(starCount), // 评价星数
                      ],
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: images.map((item) {
                      return Image.asset(item, fit: BoxFit.fill,);
                    }).toList(),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: XText(productModel, fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54,),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.black38,),
        ],
      ),
    );
  }
}


class TopRow extends StatelessWidget {

  final String data1;

  final String data2;

  final String data3;

  TopRow(this.data1, this.data2, this.data3);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 5,
                height: 20,
                decoration: BoxDecoration(
                    gradient: LinearGradient( // 实现颜色渐变
                        begin: Alignment.topCenter, // 控制开始方向
                        end: Alignment.bottomCenter, // 控制结束方向
                        colors: [Colors.red, Colors.amber]
                    )
                ),
              ),
              XText(data1),
              XText(data2, fontWeight: FontWeight.normal, fontSize: 13, color: Colors.black87,),
            ],
          ),
          Row(
            children: <Widget>[
              XText(data3, fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black54,),
              Icon(Icons.navigate_next, color: Colors.black54,)
            ],
          )
        ],
      ),
    );
  }
}


class O {
  String _username;

  int _starCount;

  String _content;

  List<String> _images;

  String _productModel;

  void setUsername(String username) {
    this._username = username;
  }

  void setStarCount(int starCount) {
    this._starCount = starCount;
  }

  void setContent(String content) {
    this._content = content;
  }

  void setImages(List<String> images) {
    this._images = images;
  }

  void setProductModel(String productModel) {
    this._productModel = productModel;
  }

  String getUsername() {
    return this._username;
  }

  int getStarCount() {
    return this._starCount;
  }

  String getContent() {
    return this._content;
  }

  List<String> getImages() {
    return this._images;
  }

  String getProductModel() {
    return this._productModel;
  }
}
