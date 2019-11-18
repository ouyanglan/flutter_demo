import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

typedef OnCurrentFlag = void Function(bool currentFlag);

typedef TagOnTap = void Function(int index);

class TopRegion extends StatefulWidget {
  @override
  _TopRegionState createState() => _TopRegionState();

  final OnCurrentFlag onCurrentFlag;

  final TagOnTap tagOnTap;

  TopRegion({this.onCurrentFlag, this.tagOnTap});
}

class _TopRegionState extends State<TopRegion> {

  bool _currentFlag = false;

  @override
  Widget build(BuildContext context) {
    double tagWidth = (MediaQuery.of(context).size.width - 70) / 4;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentFlag = !_currentFlag;
                        });
                        widget.onCurrentFlag(_currentFlag);
                      },
                      child: _currentFlag ? Icon(Icons.check_circle, color: Color.fromRGBO(255, 114, 86, 0.7),) : Icon(Icons.panorama_fish_eye, color: Colors.black54,),
                    ),
                    SizedBox(width: 10,),
                    XText("只看当前商品", fontWeight: FontWeight.normal,),
                  ],
                ),
                RichText(
                  text: TextSpan(
                      text: "商品好评度 ",
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                      children: [
                        TextSpan(
                            text: "98%",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                        )
                      ]
                  ),
                )
              ],
            ),
          ),
          Divider(height: 1, color: Colors.black12,),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            height: _wrapHeight,
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 10,
              spacing: 10,
              children: _tags.asMap().keys.map((index) {
                return Tags(
                  "${_index == index ? "√" : ""}"+_tags[index],
                  width: index <= 4 ? tagWidth : null,
                  selectedFlag: _index == index,
                  padding: index > 4 ? 10 : 0,
                  onTap: () {
                    widget.tagOnTap(index);
                    setState(() {
                      _index = index;
                    });
                  },
                );
              }).toList()
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _wrapHeight = _wrapHeight == 150 ? 250 : 150;
                _downFlag = !_downFlag;
              });
            },
            child: _downFlag ? Icon(Icons.expand_more) : Icon(Icons.expand_less),
          ),
          Container(height: 10, width: MediaQuery.of(context).size.width, color: Colors.black12,),
        ],
      ),
    );
  }

  double _wrapHeight = 150;
  int _index = 0;
  List<String> _tags = ["全部 1.9万+", "最新", "好评 6500+", "中评 30+", "差评 40+", "有图 3600+", "追加评价 400+", "视频晒单 400+", "反应超快 355", "漂亮大方 197", "设计人性化1", "清晰度高3", "拍照一流10", "颜色绚丽2", "照片清晰1"];
  bool _downFlag = true;
}

class Tags extends StatelessWidget {

  final double width;

  final String text;

  final bool selectedFlag;

  final Function onTap;

  final double padding;

  Tags(this.text, {this.width, this.padding = 0, this.selectedFlag = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.fromLTRB(padding, 5, padding, 5),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 114, 86, 0.2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: selectedFlag ? Colors.red : Color.fromRGBO(255, 114, 86, 0.2), width: 1)
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          overflow:TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 13,
            color: selectedFlag ? Colors.redAccent : Colors.black,
          ),
        )
      ),
    );
  }
}

/*
Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              selectedFlag ? Icon(Icons.check, size: 15, color: Colors.redAccent,) : Text(""),
              XText(text, fontWeight: FontWeight.normal, fontSize: selectedFlag ? 13 : 12, color: selectedFlag ? Colors.redAccent : Colors.black,),
            ],
          )
 */
