import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:garron/common/colors.dart';
import '../index.dart';

/// 我的课程
class LessonWidget extends GetView<HomeController> {
  const LessonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular((12)),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "我的课程",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryText),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "2023-07-07~2023-07-08",
                  style: TextStyle(fontSize: 14, color: AppColor.secondaryText),
                ),
              )),
              Text("更多 >", style: TextStyle(fontSize: 14)),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('六'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Colors.amberAccent,
                                  Colors.greenAccent
                                ])),
                            child: Text('8'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.all(0),

                    // )
                  ],
                ),
                Column(
                  children: [
                    Text('日'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('9'),
                    ),
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
