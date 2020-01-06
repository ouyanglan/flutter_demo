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