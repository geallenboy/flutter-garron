import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:garron/common/themeSize.dart';
import 'package:garron/common/themeStyle.dart';
import 'package:garron/model/movieDetailModel.dart';

///轮播组件
class SwiperWidget extends StatelessWidget {
  final String classify;

  const SwiperWidget({super.key, required this.classify});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // future: getCategoryListService("轮播", classify),
        builder: (context, snapshot) {
      List<MovieDetailModel> swiperDataList = [];
      List<String> images = [
        'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=87d6daed02f41bd5c553eef461d881a0/f9198618367adab4b025268587d4b31c8601e47b.jpg',
        'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=87d6daed02f41bd5c553eef461d881a0/f9198618367adab4b025268587d4b31c8601e47b.jpg',
        'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=87d6daed02f41bd5c553eef461d881a0/f9198618367adab4b025268587d4b31c8601e47b.jpg'
      ];

      return Container(
          height: ThemeSize.swiperHeight,
          margin: ThemeStyle.margin,
          child: Swiper(
            itemBuilder: (context, index) {
              return ClipRRect(
                child: Image.network(
                  images[index],
                  height: 200,
                  fit: BoxFit.cover,
                ),
              );
            },
            indicatorLayout: PageIndicatorLayout.COLOR,
            autoplay: true,
            itemCount: images.length,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
          ));
    });
  }
}
