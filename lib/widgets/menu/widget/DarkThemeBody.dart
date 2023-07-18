import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/config.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/menu/widget/DarkThemeCard.dart';
import 'package:get/get.dart';

/// 主题外观设置
class DarkThemeBody extends StatefulWidget {
  const DarkThemeBody({super.key});

  @override
  State<DarkThemeBody> createState() => _DarkThemeBodyState();
}

class _DarkThemeBodyState extends State<DarkThemeBody> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStore>(builder: (config) {
      return Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        runSpacing: 16.w,
        spacing: 16.w,
        children: [
          DarkThemeCard(
            title: '跟随系统',
            selected: AppStore.to.getThemeMode() == ThemeMode.system,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppStore.to.isDarkMode()
                            ? [const Color(0xFFF6F8FA), const Color(0xFFF6F8FA)]
                            : [
                                const Color(0xFF111315),
                                const Color(0xFF111315)
                              ],
                      ),
                    ),
                    child: Text(
                      "Aa",
                      style: TextStyle(
                        color: AppStore.to.isDarkMode()
                            ? Colors.black87
                            : const Color(0xFFEFEFEF),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppStore.to.isDarkMode()
                            ? [const Color(0xFF111315), const Color(0xFF111315)]
                            : [
                                const Color(0xFFF6F8FA),
                                const Color(0xFFF6F8FA)
                              ],
                      ),
                    ),
                    child: Text(
                      "Aa",
                      style: TextStyle(
                        color: AppStore.to.isDarkMode()
                            ? const Color(0xFFEFEFEF)
                            : Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            onTap: () async {
              print('system');
              AppStore.to.setThemeMode('system');
            },
          ),
          DarkThemeCard(
            title: '普通模式',
            selected: AppStore.to.getThemeMode() == ThemeMode.light,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFF6F8FA), Color(0xFFF6F8FA)],
                ),
              ),
              child: Text(
                "Aa",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            onTap: () async {
              print('light');
              AppStore.to.setThemeMode('light');
            },
          ),
          DarkThemeCard(
            title: '深色模式',
            selected: AppStore.to.getThemeMode() == ThemeMode.dark,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF111315), Color(0xFF111315)],
                ),
              ),
              child: Text(
                "Aa",
                style: TextStyle(
                  color: const Color(0xFFEFEFEF),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            onTap: () async {
              print('dark');
              AppStore.to.setThemeMode('dark');
            },
          ),
        ],
      );
    });
  }
}
