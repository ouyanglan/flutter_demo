import 'package:flutter/material.dart';

class CAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CAppBarState createState() => _CAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(),
      ],
    );
  }
}
