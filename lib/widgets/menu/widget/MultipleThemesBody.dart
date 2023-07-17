import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/themes/app_theme.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/menu/widget/MultipleThemesCard.dart';
import 'package:get/get.dart';

/// 多主题设置
class MultipleThemesBody extends StatefulWidget {
  const MultipleThemesBody({super.key});

  @override
  State<MultipleThemesBody> createState() => _MultipleThemesBodyState();
}

class _MultipleThemesBodyState extends State<MultipleThemesBody> {
  @override
  Widget build(BuildContext context) {
    /// 获取多主题Key
    List appMultipleThemesModeKey = [];
    appMultipleThemesMode
        .forEach((key, value) => appMultipleThemesModeKey.add(key));
    return GetBuilder<AppStore>(builder: (config) {
      // final multipleThemesMode = AppStore().getMultipleThemesMode();
      return Padding(
        padding: EdgeInsets.only(left: 12.w, right: 12.w),
        child: Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          runSpacing: 16.w,
          spacing: 16.w,
          children: List.generate(
            appMultipleThemesModeKey.length,
            (generator) {
              String key = appMultipleThemesModeKey[generator];
              Color primaryColor =
                  appMultipleThemesMode[key]![AppMultipleThemesMode.light]!
                      .primaryColor;
              return MultipleThemesCard(
                key: Key("widget_multiple_themes_card_$key"),
                selected: AppStore.to.getMultipleThemesMode() == key,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [primaryColor, primaryColor],
                    ),
                  ),
                ),
                onTap: () async {
                  debugPrint("主题:$key");
                  AppStore.to.setMultipleThemesMode(key);
                },
              );
            },
          ),
        ),
      );
    });
  }
}
