import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/components/XText.dart';

class TopRegion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 3,
            height: 25,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Color.fromRGBO(255, 114, 86, 0.2)]
              ),
            ),
          ),
          SizedBox(width: 10,),
          XText("看了又看", fontSize: 22, fontWeight: FontWeight.w900,)
        ],
      ),
    );
  }
}
