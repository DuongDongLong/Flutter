import 'dart:ffi';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Animation<double> _ironManScale;
  Animation<double> _ironManTop;
  Animation<double> _ironManLeft;

  AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: (Duration(seconds: 1)));
    _ironManScale =
        Tween<double>(begin: 1.0, end: 0.8).animate(animationController)
          ..addListener(() {
            this.setState(() {});
          });
    _ironManTop =
    Tween<double>(begin: 0.8, end: -1.0).animate(animationController)
      ..addListener(() {
        this.setState(() {});
      });
    _ironManLeft =
    Tween<double>(begin: -0.9, end: 1.0).animate(animationController)
      ..addListener(() {
        this.setState(() {});
      });
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
                      image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            ),

            Align(
              alignment: AlignmentDirectional(_ironManLeft.value, _ironManTop.value),
              child:AnimatedBuilder(animation: _ironManScale, builder: (BuildContext context, Widget chile){
                return Transform.scale(
                  scale:  _ironManScale.value,
                  child: Container(
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/ironman.png'),
                        )),
                  ),
                );
              })
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: RaisedButton(
                onPressed: () {
                  animationController.forward();
                },
                child: Text('Go'),
                color: Colors.red,
                textColor: Colors.yellowAccent,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            )
          ],
        )));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
