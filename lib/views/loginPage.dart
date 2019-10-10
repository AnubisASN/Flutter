import 'package:flutter/material.dart';

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
                                _userNameController.clear();
                                _passwordController.clear();
                              },
                              child: Text("登录"),
                            )
                          ],
                        ),
                      ],
                    ) ,
                ),
                new Container(),
              ],
            )
        ));
  }
}
