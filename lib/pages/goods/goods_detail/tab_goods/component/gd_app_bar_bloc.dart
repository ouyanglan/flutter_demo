import 'dart:async';

class GdAppBarBLoc {

  var _scrollController;

  Stream<double> get stream => _scrollController.stream;

  add(double number) {
    _scrollController.sink.add(number);
  }

  create() {
    print("创建Bloc");
    _scrollController = StreamController<double>.broadcast();
  }

  close() {
    _scrollController.close();
  }
}

GdAppBarBLoc gdAppBarBLoc = GdAppBarBLoc();