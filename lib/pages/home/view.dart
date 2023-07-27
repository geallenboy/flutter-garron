import 'package:flutter/material.dart';
import 'package:garron/store/app.dart';
import 'package:get/get.dart';
import 'index.dart';
import 'widgets/index.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        child: Column(children: [
          Text(
            'title'.tr,
            style: TextStyle(fontSize: 16),
          )
          // Expanded(
          //   child: LessonWidget(),
          // )
        ]));
  }
}
