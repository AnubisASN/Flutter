import 'package:flutter/material.dart';
import './views/firstPage.dart';
import './views/secondPage.dart';
import './views/thirdPage.dart';

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyHomaPage(),
  ));
}

class MyHomaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomaPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(controller: controller, children: <Widget>[
        new FirstPage(),
        new SecondPage(),
        new ThirdPage(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(
            text: "列表",
            icon: new Icon(Icons.home),
          ),
          new Tab(
            text: "通知",
            icon: new Icon(Icons.message),
          ),
          new Tab(
            text: "我的",
            icon: new Icon(Icons.cloud),
          ),
        ]),
      ),
    );
  }
}
