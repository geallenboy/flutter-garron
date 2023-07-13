import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:garron/routers/app_pages.dart';
import 'package:garron/common/langs/translation_service.dart';
import 'package:garron/routers/index.dart';
import 'package:garron/store/index.dart';
import 'package:garron/utils/index.dart';
import 'package:garron/global.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///屏幕适配方案，用于调整屏幕和字体大小的flutter插件，让你的UI在不同尺寸的屏幕上都能显示合理的布局!
    return ScreenUtilInit(
        designSize: const Size(375, 812), //设计稿中设备的尺寸
        minTextAdapt: true, //是否根据宽度/高度中的最小值适配文字
        splitScreenMode: true, //支持分屏尺寸
        builder: (context, child) {
          return RefreshConfiguration(
            headerBuilder: () => const ClassicHeader(),
            footerBuilder: () => const ClassicFooter(),
            hideFooterWhenNotFull: true,
            headerTriggerDistance: 80,
            maxOverScrollExtent: 100,
            footerTriggerDistance: 150,
            child: GetMaterialApp(
              title: '家长端',
              theme: AppTheme.light,
              debugShowCheckedModeBanner: false,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routers,
              builder: EasyLoading.init(),
              translations: TranslationService(),
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: ConfigStore.to.languages,
              locale: ConfigStore.to.locale,
              fallbackLocale: const Locale('en', 'US'),
              enableLog: true,
              logWriterCallback: Logger.write,
            ),
          );
        });
  }
}
