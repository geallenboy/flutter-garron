import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:garron/pages/course/index.dart';

class CourseView extends GetWidget<CourseController> {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('course'),
      ),
    );
  }
}
