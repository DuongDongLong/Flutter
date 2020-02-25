import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Album'),
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
      body: new GridView.extent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: const EdgeInsets.all(5),
          children: _buildGridView(30)),
    );
  }

  List<Widget> _buildGridView(int number) {
    List<Stack> stack = new List<Stack>.generate(number, (int index) {
      return new Stack(
        alignment:  const Alignment(1, 1),
        children: <Widget>[
          new Container(child: new Image.asset('images/doreamon.jpeg')),
          new Container(
            padding: const EdgeInsets.all(5),
              decoration: new BoxDecoration(
            color: new Color.fromARGB(255, 71, 150, 236),
          ),
            child:  new Text(
              number.toString(),
              style:
              new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),

        ],
      );
    });
    return stack;
  }
}
