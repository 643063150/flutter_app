import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mythreepage();
  }

}
class mythreepage extends State<ThreePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(

          body: new Center(child: new Text("第三个页面"),),
        )
    );
  }

}