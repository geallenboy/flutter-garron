import 'package:flutter/material.dart';

class AvaterWidget extends StatelessWidget {
  const AvaterWidget({super.key, required this.size});

  final double size;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: size,
          height: size,
          child: ClipOval(
            child: Image.network(
              'https://www.baidu.com/img/flexible/logo/pc/result@2.png',
              height: size,
              width: size,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
