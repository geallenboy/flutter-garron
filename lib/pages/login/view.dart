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
  var code =
      'eyJhbGciOiJIUzUxMiJ9.eyJsb2dpbl91c2VyX2tleSI6ImM2MjdiMjZmLTdhNmMtNGFkZi04MWQzLWFjNTM1N2FjZDNlYyJ9.dzkmmBYHHP2hftskabnc0Ke7ntWfvHwV9K2-nSS9kBsxVUON37ADOHmhQmKxubMoROuEytpbsVkcGuZCpNgVWg';
  var appId = 'wx451ef24626489257';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "教师登陆",
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
                        code = value;
                      },
                      decoration: const InputDecoration(
                          icon: Icon(GarronIcons.user),
                          border: InputBorder.none,
                          hintText: "请输入token"),
                      controller: TextEditingController.fromValue(
                          TextEditingValue(text: code))),
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
                        appId = value;
                      },
                      decoration: const InputDecoration(
                          icon: Icon(GarronIcons.user),
                          border: InputBorder.none,
                          hintText: "请输入appId"),
                      controller: TextEditingController.fromValue(
                          TextEditingValue(text: appId))),
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
                      if (code.isEmpty && appId.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  content: Text(
                                    "token/appId 不能为空!",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                      } else {
                        print(code);
                        // dynamic userProfile = await UserAPI.getUserInfo();
                        // print(userProfile.data);
                        UserStore.to.setToken(code);
                        // UserStore.to.saveProfile(jsonDecode(userProfile));

                        Get.toNamed("/index");
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
