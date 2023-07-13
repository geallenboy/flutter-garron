import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// Box2
class Box2Widget extends GetView<HomeController> {
  const Box2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular((8)),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "我的课程",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "2023-07-07~2023-07-08",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("更多 >", style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('六'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('今'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('日'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('9'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('一'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('10'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('二'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('11'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('三'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('12'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('四'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('13'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('五'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('14'),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
