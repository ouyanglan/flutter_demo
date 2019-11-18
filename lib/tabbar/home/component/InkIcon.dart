import 'package:flutter/material.dart';

/*
 * 阿里icon: https://www.iconfont.cn
 *    1. 将选中的图标加入购物车, 在购物车中选择 下载代码, 打开下载好的文件将.ttf结尾的文件复制到项目
 *    2. 在.yaml中配置
 *
 *    注: IconData 第一个参数 codePoint 在下载文件夹下的html中查看, 将 &# 替换为 0
 */
class InkIcon extends StatelessWidget {

  final codePoint;

  final fontFamily;

  final textData;

  final inkIconOnTap;

  final color;

  final double fontSize;

  InkIcon(this.codePoint, this.fontFamily, this.textData, {this.color = Colors.white, this.fontSize = 11, this.inkIconOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Container(
            child: Icon(IconData(codePoint,fontFamily: fontFamily), color: color),
          ),
          Text(
            textData,
            style: TextStyle(
                fontSize: fontSize,
                color: color
            ),
          )
        ],
      ),
      onTap: inkIconOnTap,
    );
  }
}
