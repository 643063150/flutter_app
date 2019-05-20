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
import 'five_page.dart';
import 'four_page.dart';
import 'listben_entity.dart';
import 'mylistben_entity.dart';
import 'package:easy_listview/easy_listview.dart';
import 'NavigationIconView.dart';

import 'mynewslistben_entity.dart';
import 'newslistben_entity.dart';
import 'three_page.dart';
import 'two_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Index();
//      MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
////      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//      home: new Scaffold(
//        appBar: AppBar(
//          title: new Text("一个列表"),
//          centerTitle: true,
//        ),
//        body: Index()),
//    );
  }
}

class NewsListPage extends StatefulWidget {
  @override
  NewsListPageState createState() {
    // TODO: implement createState
    return NewsListPageState();
  }
}

class NewsListPageState extends State<NewsListPage> with AutomaticKeepAliveClientMixin{
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
          return new CachedNetworkImage(
            imageUrl: bannerList[index].imagePath,
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
    return Card(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: new InkWell(
        child: Container(
          height: 115,
//        child: Container(

//          decoration: UnderlineTabIndicator(
//              borderSide: BorderSide(color: Colors.black12, width: 1.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: new CachedNetworkImage(
                  width: 120,
                  height: 115,
                  imageUrl: newslist[pos].thumbnailPicS,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 1,
//                child: new Padding(
//                  padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: Text(
                        newslist[pos].title,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          decoration: TextDecoration.none,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: EdgeInsets.all(10),
                    )),
                    Container(
                      child: getItemBottomWidget(pos),
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
//                ),
              )
            ],
          ),
//        ),
        ),
        onTap: () => _onTap(pos),
      ),
      elevation: 5,
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

// 创建一个 带有状态的 Widget Index
class Index extends StatefulWidget {
  //  固定的写法
  @override
  State<StatefulWidget> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _currentIndex = 0; // 当前界面的索引值
  List<NavigationIconView> _navigationViews; // 底部图标按钮区域
  List<StatefulWidget> _pageList; // 用来存放我们的图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面
  String title="首页";
  var titlelist=["首页","想法","市场","通知","我的"];
  // 声明定义一个 底部导航的工具栏

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 声明定义一个 底部导航的工具栏
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(), // 添加 icon 按钮
      currentIndex: _currentIndex, // 当前点击的索引值
      type: BottomNavigationBarType.fixed, // 设置底部导航工具栏的类型：fixed 固定
      onTap: (int index) {
        // 添加点击事件
        setState(() {
          // 点击之后，需要触发的逻辑事件
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
          title=titlelist[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: new Text(title),
          centerTitle: true,
        ),
        body: new IndexedStack(
          index: _currentIndex,
          children: _pageList,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }

  // 定义一个空的设置状态值的方法
  void _rebuild() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
          icon: new Icon(Icons.assessment), title: new Text("首页"), vsync: this),
      // vsync 默认属性和参数
      new NavigationIconView(
          icon: new Icon(Icons.all_inclusive),
          title: new Text("想法"),
          vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.add_shopping_cart),
          title: new Text("市场"),
          vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.add_alert), title: new Text("通知"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.perm_identity),
          title: new Text("我的"),
          vsync: this),
    ];
    // 给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
    _pageList = <StatefulWidget>[
      new NewsListPage(),
      new TwoPage(),
      new ThreePage(),
      new FourPage(),
      new FivePage(),
    ];
    _currentPage = _pageList[_currentIndex];
    title=titlelist[_currentIndex];
  }
}
