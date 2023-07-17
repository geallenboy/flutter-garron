import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/config.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/animation/animation.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';

/// 多主题卡片
class MultipleThemesCard extends StatelessWidget {
  /// 卡片内容
  final Widget? child;

  /// 是否选中
  final bool? selected;

  /// 点击触发
  final Function()? onTap;

  const MultipleThemesCard({
    Key? key,
    this.child,
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
                  width: 64.w,
                  height: 64.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
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
                    borderRadius: BorderRadius.circular(50),
                    child: child,
                  ),
                ),
                Builder(
                  builder: (_) {
                    if (!isSelected) {
                      return const SizedBox();
                    }
                    return Padding(
                      padding: EdgeInsets.only(right: 12.w, bottom: 12.w),
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
          ],
        ),
      ),
    );
  }
}
