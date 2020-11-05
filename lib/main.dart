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
      home: MyHomePage(title: 'Flutter 21 Day Series Week 1'),
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
      body: Center(
        child: Text(
          'JUST A BORING TEXT',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40,
              height: 2,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.indigo,
              backgroundColor: Colors.deepOrangeAccent,
              shadows: [
                Shadow(
                    color: Colors.indigo,
                    blurRadius: 20,
                    offset: Offset(0, 30)),
              ]),
        ),
      ),
    );
  }
}
