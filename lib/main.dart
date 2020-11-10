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
          backgroundColor: Colors.black,
          title: Text(widget.title),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(color: Colors.black, height: 200),
            ),
            Positioned(
              top: 100,
              right: 50,
              left: 50,
              child: Image.asset('images/detective-pikachu.jpg'),
            ),
            Positioned(
              top: 350,
              right: 10,
              left: 10,
              child: Text(
                'You can do wonders with Stack',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
