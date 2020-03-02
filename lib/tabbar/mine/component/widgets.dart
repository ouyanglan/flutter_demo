class El {
  final List<O> WIDGET_LIST = [
    O("AbsorbPointer", "/absorbPointer"),
    O("AlertDialog", "/alertDialog"),
    O("Align", "/align"),
    O("AnimatedBuilder", "/animatedBuilder"),
    O("AnimatedContainer", "/animatedContainer"),
    O("AnimatedCrossFade", "/animatedCrossFade"),
    O("AnimatedDefaultTextStyle", "/animatedDefaultTextStyle"),
    O("AnimatedListState", "/animatedListState"),
    O("AnimatedModalBarrier", "/animatedModalBarrier"),
    O("AnimatedOpacity", "/animatedOpacity"),
    O("AnimatedPhysicalModel", "/animatedPhysicalModel"),
    O("AnimatedPositioned", "/animatedPositioned"),
    O("AnimatedSize", "/animatedSize"),
    O("AnimatedWidget", "/animatedWidget"),
    O("AppBar", "/appBar"),
    O("AspectRatio", "/aspectRatio"),
    O("AssetBundle", "/assetBundle"),
    O("BackdropFilter", "/backdropFilter"),
    O("Baseline", "/baseline"),
    O("BottomNavigationBar", "/bottomNavigationBar"),
    O("BottomSheet", "/bottomSheet"),
    O("ButtonBar", "/buttonBar"),
    O("Card", "/card"),
    O("Center", "/center"),
    O("Checkbox", "/checkbox"),
    O("Chip", "/chip"),
    O("CircularProgressIndicator", "/circularProgressIndicator"),
    O("ClipOval", "/clipOval"),
    O("ClipPath", "/clipPath"),
    O("ClipRect", "/clipRect"),
    O("Column", "/column"),
    O("ConstrainedBox", "/constrainedBox"),
    O("Container", "/container"),
    O("CupertinoActionSheet", "/cupertinoActionSheet"),
    O("CupertinoActivityIndicator", "/cupertinoActivityIndicator"),
    O("CupertinoAlertDialog", "/cupertinoAlertDialog"),
    O("CupertinoButton", "/cupertinoButton"),
    O("CupertinoDatePicker", "/cupertinoDatePicker"),
    O("CupertinoFullscreenDialogTransition", "/cupertinoFullscreenDialogTransition"),
    O("CupertinoNavigationBar", "/cupertinoNavigationBar"),
    O("CupertinoPageTransition", "/cupertinoPageTransition"),
    O("CupertinoPicker", "/cupertinoPicker"),
    O("CupertinoPopupSurface", "/cupertinoPopupSurface"),
    O("CupertinoScrollbar", "/cupertinoScrollbar"),
    O("CupertinoSegmentedControl", "/cupertinoSegmentedControl"),
    O("CupertinoSlider", "/CupertinoSlider"),
    O("CupertinoSwitch", "/CupertinoSwitch"),
    O("CupertinoTabBar", "/CupertinoTabBar"),
//    O("CupertinoTabScaffold", "/CupertinoTabScaffold"),
    O("CupertinoTextField", "/CupertinoTextField"),
    O("CupertinoTimerPicker", "/CupertinoTimerPicker"),
    O("CustomMultiChildLayout", "/CustomMultiChildLayout"),
    O("CustomPaint", "/CustomPaint"),
    O("CustomScrollView", "/CustomScrollView"),
    O("CustomSingleChildLayout", "/CustomSingleChildLayout"),
    O("DataTable", "/DataTable"),
    O("DateTimePacker", "/DateTimePacker"),
    O("DecoratedBox", "/DecoratedBox"),
    O("DecoratedBoxTransition", "/DecoratedBoxTransition"),
    O("DefaultTextStyle", "/DefaultTextStyle"),
    O("Dismissible", "/Dismissible"),
    O("Divider", "/Divider"),
    O("DragTarget", "/DragTarget"),
    O("Draggable", "/Draggable"),
    O("Drawer", "/Drawer"),
    O("DropdownButton", "/DropdownButton"),
    O("ExcludeSemantics", "/ExcludeSemantics"),
    O("Expanded", "/Expanded"),
    O("ExpansionPanel", "/ExpansionPanel"),
    O("FadeTransition", "/FadeTransition"),
    O("FittedBox", "/FittedBox"),
    O("FlatButton", "/FlatButton"),
    O("FloatingActionButton", "/FloatingActionButton"),
    O("Flow", "/Flow"),
    O("FlutterLogo", "/FlutterLogo"),
    O("Form", "/Form"),
    O("FormField", "/FormField"),
    O("FractionallySizedBox", "/FractionallySizedBox"),
    O("FutureBuilder", "/FutureBuilder"),
    O("GestureDetector", "/GestureDetector"),
    O("GridView", "/GridView"),
    O("Hero", "/Hero"),
    O("Icon", "/Icon"),
    O("IconButton", "/IconButton"),
    O("IgnorePointer", "/IgnorePointer"),
    O("Image", "/Image"),
    O("IndexedStack", "/IndexedStack"),
    O("IntrinsicHeight", "/IntrinsicHeight"),
    O("IntrinsicWidth", "/IntrinsicWidth"),
    O("LayoutBuilder", "/LayoutBuilder"),
    O("LimitedBox", "/LimitedBox"),
    O("LinearProgressIndicator", "/LinearProgressIndicator"),
    O("ListBody", "/ListBody"),
    O("ListTile", "/ListTile"),
    O("ListView", "/ListView"),
    O("LongPressDraggable", "/LongPressDraggable"),
    O("MaterialApp", "/MaterialApp"),
    O("MediaQuery", "/MediaQuery"),
    O("MergeSemantics", "/MergeSemantics"),
    O("Navigator", "/Navigator"),
    O("NestedScrollView", "/NestedScrollView"),
    O("NotificationListener", "/NotificationListener"),
    O("Offstage", "/Offstage"),
    O("Opacity", "/Opacity"),
    O("OutlineButton", "/OutlineButton"),
    O("OverflowBox", "/OverflowBox"),
    O("Padding", "/Padding"),
    O("Placeholder", "/Placeholder"),
    O("PopupMenuButton", "/PopupMenuButton"),
    O("PositionedTransition", "/PositionedTransition"),
    O("Radio", "/Radio"),
    O("RaisedButton", "/RaisedButton"),
    O("RawImage", "/RawImage"),
    O("RawKeyboardListener", "/RawKeyboardListener"),
    O("RefreshIndicator", "/RefreshIndicator"),
    O("RichText", "/RichText"),
    O("RotatedBox", "/RotatedBox"),
    O("RotationTransition", "/RotationTransition"),
    O("Row", "/Row"),
    O("ScaleTransition", "/ScaleTransition"),
    O("ScrollConfiguration", "/ScrollConfiguration"),
    O("Scrollbar   !", "/Scrollbar"),
    O("Semantics   !", "/Semantics"),
    O("SimpleDialog", "/SimpleDialog"),
    O("SingleChildScrollView", "/SingleChildScrollView"),
    O("SizeTransition", "/SizeTransition"),
    O("SizedBox", "/SizedBox"),
    O("SizedOverflowBox", "/SizedOverflowBox"),
    O("SlideTransition", "/SlideTransition"),
    O("Slider", "/Slider"),
    O("SliverAppBar", "/SliverAppBar"),
    O("SnackBar", "/SnackBar"),
    O("Stack", "/Stack"),
    O("Stepper", "/Stepper"),
    O("StreamBuilder", "/StreamBuilder    !"),
    O("Switch", "/Switch"),
  ];
}
El el = El();

class O {
  String name;

  String path;

  O(String name, String path) {
    this.name = name;
    this.path = path;
  }
}
