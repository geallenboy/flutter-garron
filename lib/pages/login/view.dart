import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:garron/common/themeColors.dart';
import 'package:garron/common/themeSize.dart';
import 'package:garron/common/themeStyle.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    String userId = '123456789';
    TextEditingController userController =
        new TextEditingController(text: userId);
    TextEditingController pwdController =
        new TextEditingController(text: "123456");
    String password = "123456";
    return Scaffold(
        backgroundColor: ThemeColors.colorBg,
        body: SafeArea(
          child: Container(
            padding: ThemeStyle.padding,
            margin: ThemeStyle.padding,
            decoration: ThemeStyle.boxDecoration,
            child: Column(
              children: <Widget>[
                Form(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        "lib/assets/images/icon-logo.png",
                        width: ThemeSize.movieWidth / 2,
                        height: ThemeSize.movieWidth / 2,
                      )),
                      SizedBox(
                        height: ThemeSize.containerPadding * 2,
                      ),
                      Container(
                          margin: ThemeStyle.margin,
                          padding:
                              EdgeInsets.only(left: ThemeSize.containerPadding),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(ThemeSize.superRadius)),
                              border:
                                  Border.all(color: ThemeColors.borderColor)),
                          child: TextField(
                              onChanged: (value) {
                                if (value != "") {
                                  userId = value;
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "请输入用户名",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      backgroundColor: ThemeColors.disableColor,
                                      fontSize: ThemeSize.middleFontSize);
                                }
                              },
                              controller: userController,
                              cursorColor: Colors.grey, //设置光标
                              decoration: InputDecoration(
                                hintText: "请输入用户名",
                                icon: Image.asset(
                                    "lib/assets/images/icon-user.png",
                                    width: ThemeSize.smallIcon,
                                    height: ThemeSize.smallIcon),
                                hintStyle:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                                contentPadding: EdgeInsets.only(left: 0.0),
                                border: InputBorder.none,
                              ))),
                      Container(
                          padding:
                              EdgeInsets.only(left: ThemeSize.containerPadding),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(ThemeSize.superRadius)),
                              border:
                                  Border.all(color: ThemeColors.borderColor)),
                          child: TextField(
                              onChanged: (value) {
                                if (value != "") {
                                  password = value;
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "请输入用户名",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      backgroundColor: ThemeColors.disableColor,
                                      fontSize: ThemeSize.middleFontSize);
                                }
                              },
                              controller: pwdController,
                              obscureText: true,
                              cursorColor: Colors.grey, //设置光标
                              decoration: InputDecoration(
                                icon: Image.asset(
                                    "lib/assets/images/icon-password.png",
                                    width: ThemeSize.smallIcon,
                                    height: ThemeSize.smallIcon),
                                hintText: "请输入密码",
                                hintStyle: TextStyle(
                                    fontSize: ThemeSize.smallFontSize,
                                    color: Colors.grey),
                                contentPadding: EdgeInsets.only(left: 0.0),
                                border: InputBorder.none,
                              ))),
                      SizedBox(height: ThemeSize.containerPadding),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                            Radius.circular(ThemeSize.superRadius)),
                      ),
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("登录",
                              style: TextStyle(color: ThemeColors.colorWhite))),
                    ),
                    SizedBox(height: ThemeSize.containerPadding),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("注册"),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ThemeSize.superRadius)),
                          border: Border.all(color: ThemeColors.borderColor)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
