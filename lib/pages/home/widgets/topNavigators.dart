import 'package:flutter/material.dart';
import 'package:garron/common/themeSize.dart';
import 'package:garron/common/themeStyle.dart';

///分类图标
class TopNavigatorsWidget extends StatelessWidget {
  const TopNavigatorsWidget({super.key});

  List<Widget> _items(BuildContext context) {
    List listData = [
      {"image": "assets/images/icon-hot.png", "title": "热门"},
      {"image": "assets/images/icon-play.png", "title": "预告"},
      {"image": "assets/images/icon-top.png", "title": "最新"},
      {"image": "assets/images/icon-classify.png", "title": "分类"}
    ];
    var tempList = listData.map((value) {
      return InkWell(
          onTap: () {},
          child: Container(
              child: Column(
            children: <Widget>[
              Image.asset(value['image'],
                  height: ThemeSize.bigIcon,
                  width: ThemeSize.bigIcon,
                  fit: BoxFit.cover),
              SizedBox(height: ThemeSize.containerPadding),
              Text(
                value['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ],
          )));
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ThemeStyle.boxDecoration,
        width: MediaQuery.of(context).size.width,
        height: 110,
        margin: ThemeStyle.margin,
        child: GridView.count(
            crossAxisSpacing: 10.0, //水平子 Widget 之间间距
            mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
            padding: EdgeInsets.all(10),
            crossAxisCount: 4, //一行的 Widget 数量
            children: this._items(context)));
  }
}
