import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/config.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/animation/animation.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';

/// 深色模式卡片
class DarkThemeCard extends StatelessWidget {
  /// 卡片内容
  final Widget? child;

  /// 卡片标题
  final String? title;

  /// 是否选中
  final bool? selected;

  /// 点击触发
  final Function()? onTap;

  const DarkThemeCard({
    Key? key,
    this.child,
    this.title,
    this.selected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = selected ?? false;

    return AnimatedPress(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  width: 100.w,
                  height: 72.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.w),
                    border: isSelected
                        ? Border.all(
                            width: 3.w,
                            color: AppStore().isDarkMode()
                                ? Colors.white
                                : Colors.black,
                          )
                        : Border.all(
                            width: 3.w,
                            color: AppStore().isDarkMode()
                                ? Colors.white12
                                : Colors.black12,
                          ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.w),
                    child: ExcludeSemantics(child: child),
                  ),
                ),
                Builder(
                  builder: (_) {
                    if (!isSelected) {
                      return const SizedBox();
                    }
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w, bottom: 8.w),
                      child: Icon(
                        Remix.checkbox_circle_fill,
                        size: 20.sp,
                        color: AppStore().isDarkMode()
                            ? Colors.white
                            : Colors.black,
                      ),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.w),
              child: Text(
                title ?? "",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
