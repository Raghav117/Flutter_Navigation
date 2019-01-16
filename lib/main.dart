import 'package:flutter/material.dart';
import 'src/SecondScreen.dart';

void main()
{
  runApp(new MaterialApp(
    title: "Navigation",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation"),
        centerTitle: true,
      ),
      body: new Center(
        child: new MyApp(),
      )
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new MaterialButton(
            onPressed: (){
              Navigator.push(context,new MaterialPageRoute(builder: (context)=>new SecondScreen(
                ttext: "Player 1",
                bgcolor: const Color(0xFF55efc4),)));
            },
        color: Colors.greenAccent,
        child: new Text("Player 1"),
        ),

        new MaterialButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=>new SecondScreen(
              ttext: "Player 2",
            bgcolor: const Color(0xFFfdcb6e),)));
          },
          color: Colors.yellowAccent,
          child: new Text("Player 2"),
        ),
      ],
    );
  }
}
