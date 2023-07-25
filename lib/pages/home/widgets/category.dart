import 'package:flutter/material.dart';
import 'package:garron/common/themeStyle.dart';
import 'package:garron/model/movieDetailModel.dart';
import 'package:garron/pages/home/widgets/title.dart';

import 'movieList.dart';

/*-----------------------分类电影------------------------*/
class CategoryWidget extends StatelessWidget {
  final String category, classify;

  const CategoryWidget(
      {super.key, required this.category, required this.classify});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // future: getCategoryListService(this.category, this.classify),
        builder: (context, snapshot) {
      List<dynamic> categoryList = ['test1', 'test2'];
      print('1111');
      return Container(
        decoration: ThemeStyle.boxDecoration,
        margin: ThemeStyle.margin,
        padding: ThemeStyle.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(title: category),
            MovieListWidget(
              movieList: categoryList,
              direction: "horizontal",
            )
          ],
        ),
      );
    });
  }
}
/*-----------------------分类电影------------------------*/