import 'package:flutter/material.dart';

class FourPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myfourpage();
  }

}
class myfourpage extends State<FourPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(

          body: new Center(child: new Text("第四个页面"),),
        )
    );
  }

}