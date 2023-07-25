import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garron/common/themeSize.dart';
import 'package:garron/common/themeStyle.dart';
import 'package:garron/pages/home/widgets/swiper.dart';
import 'package:garron/pages/home/widgets/topNavigators.dart';
import 'package:get/get.dart';
import 'index.dart';
import 'widgets/index.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: ThemeStyle.paddingBox,
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width -
                ThemeSize.containerPadding * 2,
            margin: ThemeStyle.margin,
            decoration: ThemeStyle.boxDecoration,
            child: Padding(
              padding: ThemeStyle.padding,
              child: Row(
                children: <Widget>[
                  AvaterWidget(size: ThemeSize.middleAvater),
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: EdgeInsets.only(left: ThemeSize.smallMargin),
                          child: SearchWidget(classify: "电影")))
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: EasyRefresh(
                  footer: MaterialFooter(),
                  onLoad: () async {
                    print('已经到底了');
                    controller.getCategoryItem();
                  },
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          SwiperWidget(classify: "电影"),
                          TopNavigatorsWidget(),
                        ],
                      ),
                      Column(
                        children: controller.categoryList,
                      )
                    ],
                  )))
        ]));
  }
}
