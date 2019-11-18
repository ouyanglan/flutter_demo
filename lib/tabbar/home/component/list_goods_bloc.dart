import 'dart:async';

class ListGoodsBLoc {

  var _scrollController;

  Stream<int> get stream => _scrollController.stream;

  add(int number) {
    _scrollController.sink.add(number);
  }

  create() {
    _scrollController = StreamController<int>.broadcast();
  }

  close() {
    _scrollController.close();
  }
}

ListGoodsBLoc listGoodsBLoc = ListGoodsBLoc();