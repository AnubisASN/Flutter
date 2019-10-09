import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('通知'),
      ),
      body: new Center(
        child: new Text('这是第二个界面'),
      ),
    );
  }

}
void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new SecondPage(),
  ));
}
