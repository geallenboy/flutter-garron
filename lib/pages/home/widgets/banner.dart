import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// banner
class BannerWidget extends GetView<HomeController> {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Template'),
      ),
    );
  }
}
