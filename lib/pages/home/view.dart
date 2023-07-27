import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        child: const Column(children: [Text('home')]));
  }
}
