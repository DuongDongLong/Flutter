import 'package:flutter/material.dart';
import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';
import 'Tab4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Tap'),
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
  final tapBar = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          bottom: new TabBar(tabs: [
            new Tab(
              icon: new Icon(Icons.home),
              text: 'Home',
            ),
            new Tab(
              icon: new Icon(Icons.chat),
              text: 'Chat',
            ),
            new Tab(
              icon: new Icon(Icons.notifications),
              text: 'Note',
            ),
            new Tab(
              icon: new Icon(Icons.account_box),
              text: 'Profile',
            )
          ]),
          title: new Text('Flutter Tap'),
        ),
        body: new TabBarView(
            children: [new Tab1(), new Tab2(), new Tab3(), new Tab4()]),
      ));
  @override
  Widget build(BuildContext context) {
    return tapBar;
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
