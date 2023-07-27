import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/widgets/menu/widget/MenuList.dart';
import 'package:garron/widgets/menu/widget/setting_language.dart';
import 'package:garron/widgets/menu/widget/setting_theme.dart';
import 'package:garron/widgets/modal_bottom_detail/modal_bottom_detail.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';

/// 菜单
class Menu extends StatelessWidget {
  const Menu({super.key});
  static final _titleTextSize = 14.sp;
  static final _titleIconSize = 20.sp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuList(
          icon: Icon(
            Remix.bubble_chart_line,
            size: _titleIconSize,
          ),
          title: Text(
            'theme'.tr,
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("主题");

            /// 底部内容弹出
            showModalBottomDetail(
              context: context,
              child: const SettingTheme(),
            );
          },
        ),
        MenuList(
          icon: Icon(
            Remix.global_line,
            size: _titleIconSize,
          ),
          title: Text(
            'language'.tr,
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("语言");

            /// 底部内容弹出
            showModalBottomDetail(
                context: context, child: const SettingLanguage());
          },
        ),
        MenuList(
          icon: Icon(
            Remix.heart_3_line,
            size: _titleIconSize,
          ),
          title: Text(
            'about'.tr,
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("关于");
          },
        ),
      ],
    );
  }
}
