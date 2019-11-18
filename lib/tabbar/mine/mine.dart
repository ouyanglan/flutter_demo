import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with SingleTickerProviderStateMixin  {

  List<Widget> list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//    for (int i = 1; i <= 19; i++) {
//      list.add(
//        Container(
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.all(Radius.circular(100))
//          ),
//          child: Card(
////            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
//            child: Image.asset("asset/images/$i.jpg", fit: BoxFit.fill,),
//          ),
//        ),
//      );
//    }
    for (int i = 1; i <= 50; i++) {
      list.add(Text(i.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("标题"),
            expandedHeight: 230.0,
            floating: true,
            forceElevated: true,
            pinned: false,
            snap: true,
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate((context, index) => new ListTile(
                title: new Text("Item $index"),
              ),
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
