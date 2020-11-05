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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Image from assets',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.asset('images/detective-pikachu.jpg'),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Image from network',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.network(
              'https://images.pexels.com/photos/4245856/pexels-photo-4245856.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : LinearProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
