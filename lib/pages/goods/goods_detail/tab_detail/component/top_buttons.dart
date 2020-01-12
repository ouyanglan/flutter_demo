import 'package:flutter/material.dart';
import 'package:flutter_demo/components/XText.dart';

typedef OnTap(int index);

class TopButtons extends StatefulWidget {
  @override
  _TopButtonsState createState() => _TopButtonsState();

  final List<String> buttonTextList;

  final OnTap onTap;

  TopButtons(this.buttonTextList, {this.onTap});
}

class _TopButtonsState extends State<TopButtons> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    double buttonContainerWidth = MediaQuery.of(context).size.width / 7;
    return Container(
      padding: EdgeInsets.fromLTRB(buttonContainerWidth, 20, buttonContainerWidth, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.buttonTextList.asMap().keys.map((index) {
          return GestureDetector(
            onTap: () {
              print("点击了");
              setState(() {
                _index = index;
              });
              widget.onTap(index);
            },
            child: Container(
              child: XText(widget.buttonTextList[index], fontWeight: FontWeight.normal, color: _index == index ? Colors.red : Colors.black54,),
            ),
          );
        }).toList(),
      ),
    );
  }
}

