import 'package:flutter/material.dart';
import 'package:garron/common/themeSize.dart';
import 'package:garron/model/movieDetailModel.dart';

/// 获取推荐的影片
class MovieListWidget extends StatelessWidget {
  final List<dynamic> movieList;
  final String direction;

  const MovieListWidget(
      {super.key, required this.movieList, required this.direction});

  List<Widget> _items(BuildContext context) {
    int index = -1;
    var tempList = movieList.map((item) {
      print(item);
      index++;
      return InkWell(
          onTap: () {},
          child: direction == "verital"
              ? Container(
                  alignment: Alignment.center,
                  child: movieItemWidget(item, index))
              : movieItemWidget(item, index));
    });
    return tempList.toList();
  }

  Widget movieItemWidget(dynamic item, int index) {
    return Container(
      width: ThemeSize.movieWidth,
      height: ThemeSize.movieHeight,
      margin: EdgeInsets.only(
          left: direction == "horizontal" && index > 0 ? 10 : 0),
      child: Column(
        children: [
          // ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image(
          //         width: 150,
          //         height: 200,
          //         fit: BoxFit.fill,
          //         image: NetworkImage(item.images))),
          SizedBox(height: 10),
          Text(
            item,
            softWrap: true,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      direction == "vertical"
          ? GridView.count(
              crossAxisSpacing: 10,
              //水平子 Widget 之间间距
              crossAxisCount: 3,
              //一行的 Widget 数量
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.55,
              children: _items(context))
          : Container(
              height: 230,
              width: MediaQuery.of(context).size.width -
                  ThemeSize.containerPadding * 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _items(context),
              ))
    ]);
  }
}
