import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TopSwiper extends StatelessWidget {

  final images;

  TopSwiper({this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 270, // 270 = 价格70 + 介绍120 + 底部80
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.fill,);
          },
          itemCount: images.length,
          autoplay: true,
          scrollDirection: Axis.horizontal,
          pagination: new SwiperPagination(
              alignment: Alignment(1.0, 1.0),
              builder: new FractionPaginationBuilder(
                color: Colors.black26,
                activeColor: Colors.black45
              )
          )
      ),
    );
  }
}
