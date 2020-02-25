import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {
  double _ironManAlignment = 50;
  double _ironManLeft= 20;
  double _ironManHeight= 250;
  double _ironManWidth= 150;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Animations'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bg.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              AnimatedPositioned(
                duration: Duration(seconds: 1),
                bottom: _ironManAlignment,
                left: _ironManLeft,
                height: _ironManHeight,
                width: _ironManWidth,
                child: Container(
                  child: Image.asset('images/ironman.png'),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: RaisedButton(
                  onPressed: () {
                    _flyIronMan();
                  },
                  child: Text('Go'),
                  color: Colors.red,
                  textColor: Colors.yellowAccent,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )
            ],
          )
        ));
  }
  void _flyIronMan() {
    setState(() {
      _ironManAlignment = _ironManAlignment==50?260:50;
      _ironManLeft = _ironManLeft==20?200:20;
      _ironManHeight = _ironManHeight==250?200:250;
      _ironManWidth = _ironManWidth==150?100:150;
    });
  }
}
