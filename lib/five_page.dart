import 'package:flutter/material.dart';

class FivePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myfivepage();
  }

}
class myfivepage extends State<FivePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(

          body: new Center(child: new Text("第五个页面"),),
        )
    );
  }

}