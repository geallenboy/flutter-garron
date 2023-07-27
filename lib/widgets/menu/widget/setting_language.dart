import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/langs/translation_service.dart';
import 'package:garron/store/app.dart';
import 'package:get/get.dart';

/// 语言设置
class SettingLanguage extends StatefulWidget {
  const SettingLanguage({super.key});

  @override
  State<SettingLanguage> createState() => _SettingLanguageState();
}

class _SettingLanguageState extends State<SettingLanguage> {
  /// 语言列表
  final _languageConfig = TranslationService.languageConfig;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStore>(builder: (config) {
      return Column(
        children: List<Widget>.generate(_languageConfig.length, (index) {
          var val = _languageConfig[index]["value"].toString();
          var txt = _languageConfig[index]["text"].toString();
          return RadioListTile(
            value: val,
            groupValue: AppStore.to.getAppLocal(),
            title: Text(
              txt,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14.sp, fontWeight: FontWeight.normal),
            ),
            onChanged: (value) {
              AppStore.to.onLocaleUpdate(value!);
            },
          );
        }),
      );
    });
  }
}
