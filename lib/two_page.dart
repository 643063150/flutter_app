import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mytwopage();
  }

}
class mytwopage extends State<TwoPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        body: new Center(child: new Text("第二个页面"),),
    )
    );
  }

}