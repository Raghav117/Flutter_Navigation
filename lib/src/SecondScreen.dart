import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final ttext;
  final bgcolor;


  const SecondScreen({Key key, this.ttext, this.bgcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$ttext",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("$ttext"),
          centerTitle: true,
        ),
        body: new Center(child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("$ttext"),
            new MaterialButton(onPressed: (){
              Navigator.pop(context);
            },
            color: bgcolor,
            child: new Text("Switch to main Screen"),),
          ],
        )),
      ),
    );
  }
}
