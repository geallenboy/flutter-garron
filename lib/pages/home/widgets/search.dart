import 'package:flutter/material.dart';
import 'package:garron/common/themeColors.dart';
import 'package:garron/common/themeSize.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.classify});
  final String classify;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // future: getKeyWordService(classify),
        builder: (context, snapshot) {
      String keyword = "";

      return InkWell(
          onTap: () {},
          child: Container(
              height: ThemeSize.buttonHeight,
              //修饰黑色背景与圆角
              decoration: BoxDecoration(
                color: ThemeColors.colorBg,
                borderRadius:
                    BorderRadius.all(Radius.circular(ThemeSize.bigRadius)),
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: ThemeSize.containerPadding),
              child: Text(
                keyword,
                style: TextStyle(color: Colors.grey),
              )));
    });
  }
}
