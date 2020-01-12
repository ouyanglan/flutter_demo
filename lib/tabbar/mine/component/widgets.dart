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