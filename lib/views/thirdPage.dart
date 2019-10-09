import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ThirdPageState();
}

class ThirdPageState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('我的'),
      ),
      body: new Center(
        child: new Text('这是第三个界面'),
      ),
    );
  }

}
void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new ThirdPage(),
  ));
}
