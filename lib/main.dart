import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'ListPage.dart';
import 'entity_factory.dart';
import 'listben_entity.dart';
import 'mylistben_entity.dart';
import 'package:easy_listview/easy_listview.dart';

import 'mynewslistben_entity.dart';
import 'newslistben_entity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      home: new Scaffold(
          appBar: AppBar(
            title: new Text("一个列表"),
            centerTitle: true,
          ),
          body: NewsListPage()),
    );
  }
}

class NewsListPage extends StatefulWidget {
  @override
  NewsListPageState createState() {
    // TODO: implement createState
    return NewsListPageState();
  }
}

class NewsListPageState extends State<NewsListPage> {
  static List<ListbenData> bannerList = [];
  List<MynewslistbenResultData> newslist = [];
  bool loadMore = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBannerList();
    _getNewlist();
  }

  _getBannerList() async {
    String url = "https://www.wanandroid.com/banner/json";
    Dio dio = new Dio();
    Response response = await dio.get(url);
    if (response.statusCode == HttpStatus.ok) {
      ListbenEntity listbenEntity = EntityFactory.generateOBJ(response.data);
      bannerList.addAll(listbenEntity.data);
      setState(() {
        //s刷新
      });
    }
  }

  _getNewlist() async {
    String url =
        "http://v.juhe.cn/toutiao/index?type=top&key=801f07aebfa84665f672e5dfb1df99ef";
    Dio dio = new Dio();
    Response response = await dio.get(url);
    if (response.statusCode == HttpStatus.ok) {
      MynewslistbenEntity mylistbenEntity =
          EntityFactory.generateOBJ(response.data);
      setState(() {
        newslist.addAll(mylistbenEntity.result.data);
        //刷新
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new EasyListView(
          itemCount: newslist.length,
          itemBuilder: getItemWidget,
          loadMore: loadMore,
          onLoadMore: onLiadMore,
          headerBuilder: headerBuilder),
    );
  }

  onLiadMore() {
    Fluttertoast.showToast(msg: "没有更多了");
    setState(() {
      loadMore = false;
    });
  }

  static Widget _getBannerView() {
    if (bannerList.length == 0) {
      return new Container();
    } else {
      return new Swiper(
        itemBuilder: (BuildContext c, int index) {
          return new Image.network(
            bannerList[index].imagePath,
            fit: BoxFit.fill,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: bannerList.length,
        pagination: new SwiperPagination(),
        control: null,
        onTap: (index) => Fluttertoast.showToast(msg: bannerList[index].title),
      );
    }
  }

  _onTap(int pos) {
    Fluttertoast.showToast(msg: newslist[pos].title);
  }

  var headerBuilder = (context) => Container(
        height: 200,
        alignment: AlignmentDirectional.center,
        child: _getBannerView(),
      );

  Widget getItemWidget(BuildContext, int pos) {
    return new GestureDetector(
      child: new IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.all(5.0),
          decoration: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.black12, width: 1.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: new FadeInImage.memoryNetwork(
                  height: 60,
                  width: 100,
                  image: newslist[pos].thumbnailPicS,
                  placeholder: kTransparentImage,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 1,
                child: new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        newslist[pos].title,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Container(child: getItemBottomWidget(pos)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () => _onTap(pos),
    );
  }

//
  Widget getItemBottomWidget(int pos) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
              child: Text(
            newslist[pos].category,
            style: TextStyle(
                color: Color(0xff979797),
                fontSize: 12.0,
                decoration: TextDecoration.none),
          )),
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(3.0)),
                color: Color(0xfff1f1f1)),
            child: Text(
              '${newslist[pos].authorName}',
              style: TextStyle(
                  color: Color(0xff979797),
                  fontSize: 12.0,
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}
