import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class GoodsCateView extends GetView<GoodsCateController> {
  const GoodsCateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('商品分类'),
      ),
    );
  }
}
