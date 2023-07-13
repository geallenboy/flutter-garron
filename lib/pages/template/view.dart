import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class TemplateView extends GetView<TemplateController> {
  const TemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Template'),
      ),
    );
  }
}
