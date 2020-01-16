import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:ui';

class TableSwiper extends StatelessWidget {
  List<String> textDataList = [
    "**超市",
    "数码电器",
    "**服饰",
    "**生鲜",
    "**到家",
    "充值缴费",
    "领金豆",
    "领劵",
    "借钱",
    "PLUS会员"
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        child: new Swiper(
          outer: false,
          itemBuilder: (c, i) {
            return new Wrap(
              runSpacing: 6.0,
              children: textDataList.map((i) {
                return new GestureDetector(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new SizedBox(
                          child: new Container(
                            child: new Image.asset("asset/images/123.png"),
                          ),
                          height: MediaQuery.of(context).size.width * 0.12,
                          width: MediaQuery.of(context).size.width * 0.12,
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(top: 4.0),
                          child: new Text(
                            i,
                            style: TextStyle(color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    print(i);
                  },
                );
              }).toList(),
            );
          },
          pagination: new SwiperPagination(
              margin: new EdgeInsets.all(5.0),
              builder: new RectSwiperPaginationBuilder(
                  size: Size(20, 10),
                  activeSize: Size(20, 10),
                  activeColor: Colors.black,
                  color: Colors.black12)),
          itemCount: 2,
          onIndexChanged: (index) {
            if (index == 0) {
              textDataList = [
                "**超市",
                "数码电器",
                "**服饰",
                "**生鲜",
                "**到家",
                "充值缴费",
                "领金豆",
                "领劵",
                "借钱",
                "PLUS会员"
              ];
            } else {
              textDataList = [
                "海囤全球",
                "**拍卖",
                "唯品会",
                "沃尔玛",
                "**旅行",
                "看病购药",
                "拍拍二手",
                "邀请挣钱",
                "免费水果",
                "更多频道"
              ];
            }
          },
        ),
        constraints: new BoxConstraints.loose(
            new Size(window.physicalSize.width, 175.0)));
  }
}
