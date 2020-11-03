import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient:
              LinearGradient(colors: [Colors.orange, Colors.deepOrangeAccent]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 20),
                spreadRadius: 10,
                color: Colors.grey,
                blurRadius: 20),
          ],
        ),
        child: Text("Let's start learning"),
      ),
    );
  }
}
