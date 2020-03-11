import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpecificationPage extends StatefulWidget {
  @override
  _SpecificationPageState createState() => _SpecificationPageState();
}

class _SpecificationPageState extends State<SpecificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Column(
        children: <Widget>[
          // 还没有找到不规则表格的实现方法   todo
          PTable([["商品编号", "100005185603"],], tableBorder: TableBorder.all(color: Colors.black45),),
          PTable([["存储"]], column: 1,),
          PTable([["运行内存", "8GB"], ["机身存储", "256GB"], ["最大存储扩展容量", "256GB"], ["存储卡", "MM存储卡"]]),
          PTable([["主体"]], column: 1,),
          PTable([["上市年份", "2019年"], ["上市月份", "11月"], ["入网型号", "TAS-ANOO"], ["产品名称", "HUAWEI P30 Pro"]]),
        ],
      ),
    );
  }
}

class PTable extends StatelessWidget {

  final List<List<String>> list;

  final TableBorder tableBorder;

  final int column;

  PTable(this.list, {
    this.tableBorder = const TableBorder(
      left: BorderSide(color: Colors.black45),
      right: BorderSide(color: Colors.black45),
      bottom: BorderSide(color: Colors.black45),
      verticalInside: BorderSide(color: Colors.black45),
      horizontalInside: BorderSide(color: Colors.black45),
    ),
    this.column = 2,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Table(
      columnWidths: column == 2 ? {
        0: FixedColumnWidth(width * 0.25),
        1: FixedColumnWidth(width * 0.75)
      } : {0: FixedColumnWidth(width)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: tableBorder,
      children: list.map((item) {
        return TableRow(
          children: this._setCell(item)
        );
      }).toList()
    );
  }

  List<Widget> _setCell(List<String> item) {
    List<Widget> cells = new List();
    int length = item.length;
    for (int i = 0; i < length; i++) {
      if (i == 0) {
        cells.add(Cell(item[i], fontWeight: length == 1 ? FontWeight.w600 : FontWeight.normal,));
      } else {
        cells.add(Cell(item[i]));
      }
    }
    return cells;
  }
}

class Cell extends StatelessWidget {

  final String text;

  final FontWeight fontWeight;

  Cell(this.text, {this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置了高度时是Container居中,Text显示位置需要指定 alignment
      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight
        ),
      ),
    );
  }
}
