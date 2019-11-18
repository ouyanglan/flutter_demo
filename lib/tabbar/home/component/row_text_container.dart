import 'package:flutter/material.dart';

class RowTextAndContainer extends StatelessWidget {

  final String textDate;

  final String containerTextData;

  final double width;

  final Color color;

  RowTextAndContainer(this.textDate, this.containerTextData, this.width, this.color);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          textDate,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(width: 10,),
        Container(
          alignment: Alignment.center,
          width: width,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 1, color: this.color)
          ),
          child: Text(
            containerTextData,
            style: TextStyle(
                color: this.color,
                fontSize: 12,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}