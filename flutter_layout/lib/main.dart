import 'package:flutter/material.dart';

void main() => runApp(Main());

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  Widget iconTouch(IconData icon, String text) {
    return Column(
      children: <Widget>[
        new Icon(
          icon,
          color: Colors.blue,
        ),
        new Text(
          text,
          style: new TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return new Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: new Text(
                      'Programming tutorials Channel',
                      style: new TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                new Text(
                    "This channel contains tutorial videos in Flutter, "
                    "React Native, React, Angular",
                    style:
                        new TextStyle(color: Colors.grey[850], fontSize: 15.0))
              ],
            )),
            new Container(
                child: new Row(
              children: <Widget>[
                new Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                new Text('100'),
              ],
            ))
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            iconTouch(Icons.home, 'Home'),
            iconTouch(Icons.arrow_back, 'Back'),
            iconTouch(Icons.arrow_forward, 'Next'),
            iconTouch(
              Icons.share,
              'Share',
            )
          ],
        ),
      );
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Layout'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/room.png',
              fit: BoxFit.cover,
            ),
            title(),
            menu(),
            new Container(
              padding: const EdgeInsets.all(20.0),
              //How to show long text ?
              child: new Text(
                  '''I am Nguyen Duc Hoang, I live in Hanoi, Vietnam. I create this channel which contains videos in Swift programming language, python, NodeJS, Angular, Typescript, ReactJS, React Native, ios and android programming, Kotlin programming, new technologies' overviews. These videos will help people learn latest programming language and software framework. They will be also very useful for their work or business. My channel's languages are English and Vietnamese.
      ''',
                  style:
                      new TextStyle(color: Colors.grey[850], fontSize: 16.0)),
            )
          ],
        ));
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: 'This is my tiltle', home: new Home());
  }
}
