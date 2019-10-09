import 'package:flutter/material.dart';
import '../compaonents/list.dart';
class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstPageState();
}

class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('列表'),
      ),
      body: new Container(
        // ignore: argument_type_not_assignable
        child: new List()
      ),
    );
  }
  
}
void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new FirstPage(),
  ));
}
