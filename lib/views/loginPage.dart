import 'package:flutter/material.dart';
import '../compaonents/http.dart';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

void main() {
  runApp(new MaterialApp(
    title: "Login",
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginState();
}

class LoginState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  child: new Image(
                      image: new AssetImage('assets/header_background.png')),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(
                            0.0, 0.0, 0.0, 30.0),
                        child: new TextField(
                          controller: _userNameController,
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'UserName',
                          ),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: new TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      new ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // ignore: extra_positional_arguments_could_be_named
                          FlatButton(onPressed: () {}, child: Text("忘记密码")),
                          RaisedButton(
                            onPressed: () {
                              print('登录点击 ${_userNameController.value
                                  .text}--${_passwordController.value.text}');
                              var data = _getLogin();
                              _userNameController.clear();
                              _passwordController.clear();
                            },
                            child: Text("登录"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                new Container(),
              ],
            )
        ));
  }

  _getLogin() async {
    var url = 'http://www.hbzayun.com/OfflineFace/testAdminLogin';
    var headers = Map<String, String>();
    headers['loginSource'] = 'IOS';
    headers['useVersion'] = '3.1.0';
    headers['isEncoded'] = '1';
    headers['bundleId'] = 'com.anubis.xxx';
    headers['Content-Type'] = 'application/json';

    Options option = Options(method: 'post');
    option.headers.addAll(headers);
    Dio dio = Dio();
    dio.options.baseUrl = url;

    Response response = await dio.post(url,
        data: {"currentPage": 1}, options: option);
    // Response response = await dio.request(homeRegularListUrl,
    // data: {"currentPage": 1}, options: option);

    if (response.statusCode == HttpStatus.ok) {
      debugPrint('请求参数： ${response.request.queryParameters}');
      debugPrint(
          '-------------------请求成功,请求结果如下:-----------------\n \n===请求url: ${response.request.uri.toString()} \n \n===请求 头:   \n${response.headers} \n \n===请求结果: \n${response.data}\n');
      debugPrint('-------------------请求成功,请求结果打印完毕----------------');
    } else {
      print('请求失败');
    }
  }
}
