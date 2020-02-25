import 'package:flutter/material.dart';

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
    var card =new Card(
      child: new  Column(
        children: <Widget>[
          new ListTile(
              leading: new Icon(Icons.account_box,color: Colors.blue,size: 26),
              title: new Text('Duong Dong Long',style: new TextStyle(fontWeight: FontWeight.w500),),
              subtitle: new Text('React Native, Flutter Developer',style: new TextStyle(fontWeight: FontWeight.w400),)
          ),
          new Divider(color: Colors.blue,indent: 17,height: 10,),
          new ListTile(
            leading: new Icon(Icons.mail,color: Colors.blue,size: 26,),
            title: new Text('LongDD@bap.jp',style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
          new ListTile(
            leading: new Icon(Icons.call,color: Colors.blue,size: 26,),
            title: new Text('+84896201914',style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
        ],
      ),
    );
    final sizeBox =new Container(
      margin: const EdgeInsets.only(left: 15,right: 15),
      child: new SizedBox(
        height: 220,
        child: card,
      ),
    );
    final center =new Center(
      child: sizeBox,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: center// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
