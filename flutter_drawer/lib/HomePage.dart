
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Drawer _buildDrawer(context) {
    return new Drawer(
        child: new ListView(
      children: <Widget>[
        new DrawerHeader(
            decoration: new BoxDecoration(color: Colors.blue),
            child: new Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: new Image.asset(
                      'images/doreamon.jpeg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(bottom: 10,left: 10),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Duong Dong Long',style: new TextStyle(fontSize: 17,color: Colors.black87,fontWeight: FontWeight.w500),),
                        new Text('longdd@gmail.com',style: new TextStyle(fontSize: 13,color: Colors.black54,fontWeight: FontWeight.w500))
                      ],
                    ),
                  )
                ],
              ),
            )),
        new ListTile(
          leading: new Icon(Icons.settings),
          title: new Text(
            'Option 1',
            style: new TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        new ListTile(
          leading: new Icon(Icons.settings),
          title: new Text(
            'Option 2',
            style: new TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        new ListTile(
          leading: new Icon(Icons.settings),
          title: new Text(
            'Option 3',
            style: new TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ));
  }
  CarouselSlider carouselSlider;
  int current=0;
  List imgs = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  List<T> map<T>(List list, Function handle){
     List<T> result  = [];
     for( int i=0;i<list.length;i++){
        result.add(handle(i,list[i]));
     }
     return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget>[
              carouselSlider= CarouselSlider(
                height: 380,
                enlargeCenterPage: true,
                onPageChanged: (index){
                  print("index: $index");
                  setState(() {
                    current=index;
                  });
                },
                items: imgs.map((url){
                  return Builder(
                    builder: (BuildContext context){
                      return new Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: new BoxDecoration(color: Colors.green),
                        child: Image.network(url,fit: BoxFit.fill,),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(
                  imgs, (index,url){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 13,horizontal: 2),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle,color:index==current? Colors.redAccent : Colors.blueAccent ,),
                    );
                    }
                ) ,
              ),
              SizedBox(height: 10,),
            ],
          )
        ),
      ),
      drawer: _buildDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
