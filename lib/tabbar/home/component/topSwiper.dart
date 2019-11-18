import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TopSwiper extends StatelessWidget {

  final List<String> images = [
    "asset/images/home_swiper01.jpg",
    "asset/images/home_swiper02.jpg",
    "asset/images/home_swiper03.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect( // ClipRRect: 让图片变为圆角
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: new Image.asset(
              images[index],
              fit: BoxFit.fill,
            ),
          );
        },
        autoplay: true, // 是否自动播放
        itemCount: images.length,
        viewportFraction: 0.93,
        scale: 0.9,
        pagination: new SwiperPagination(
            builder: new RectSwiperPaginationBuilder(
                size: Size(20,10), // 图片下标未选中状态大小
                activeSize: Size(20,10), // 下标选中大小
                activeColor: Colors.red // 选中颜色
            )
        ),
      ),
    );
  }
}
