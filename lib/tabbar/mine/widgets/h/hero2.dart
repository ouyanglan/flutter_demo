import 'package:flutter/material.dart';

class HeroPage2 extends StatefulWidget {
  @override
  _HeroPage2State createState() => _HeroPage2State();
}

class _HeroPage2State extends State<HeroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Hero(
              tag: "hero",
              child: Container(
                child: Image.asset("asset/images/phone1.jpg", fit: BoxFit.fill,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
