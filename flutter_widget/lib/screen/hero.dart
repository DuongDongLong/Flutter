import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  HeroPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.access_alarms),tooltip: 'abc', onPressed: (){},)
        ],
      ),
      body: Hero(
          tag: 'flutterLogo',
          child:
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroExamplePage())),
                child: FlutterLogo(size: 100,),
              )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class HeroExamplePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
            body:Center(
              child: Hero(
                tag: 'flutterLogo',
                child: GestureDetector(
                  onTap: ()=> Navigator.pop(context),
                  child: FlutterLogo(size: 200,),
                ),
              ),
            )
        )
    );

  }
}