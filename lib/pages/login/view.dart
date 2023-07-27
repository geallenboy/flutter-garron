import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:garron/common/garron_icon.dart';
import 'package:garron/store/user.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginIndexState();
  }
}

class _LoginIndexState extends State<LoginView> {
  var username = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "登陆",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
                child: ListView(
              padding: const EdgeInsets.only(left: 40, right: 40),
              children: [
                const SizedBox(
                  height: 60,
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(width: 1.0)),
                  child: TextField(
                      onChanged: (value) {
                        username = value;
                      },
                      decoration: const InputDecoration(
                          icon: Icon(GarronIcons.user),
                          border: InputBorder.none,
                          hintText: "请输入用户名"),
                      controller: TextEditingController.fromValue(
                          TextEditingValue(text: username))),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(width: 1.0)),
                  child: TextField(
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: const InputDecoration(
                          icon: Icon(GarronIcons.user),
                          border: InputBorder.none,
                          hintText: "请输入appId"),
                      controller: TextEditingController.fromValue(
                          TextEditingValue(text: password))),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))))),
                    onPressed: () async {
                      if (username.isEmpty && password.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  content: Text(
                                    "用户名/密码 不能为空!",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                      } else {
                        await UserStore.to.setToken(username);

                        await Get.toNamed("/index");
                      }
                    },
                    child: const Text(
                      "登陆",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
