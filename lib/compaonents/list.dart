import 'package:flutter/material.dart';

// ignore: type_argument_not_matching_bounds
class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 10, itemBuilder: (BuildContext context, int index) {
      return new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new ListTile(
            subtitle: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Text("标题", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))
                      ]
                  ),

                  new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Text("时间："),
                            new Text("2019-10-10 00:00"),
                          ]
                        ),
                      ]
                  ),

                  new Row(
                      children: [
                        new Container(
                          padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,2.0),
                          child: new Text("内容"),
                        )
                      ]
                  ),
                ],
              ),
            ),
            trailing: new Icon(Icons.keyboard_arrow_right,color: Colors.green,),
          ),
        ),
      );
    }
    );
  }

}
