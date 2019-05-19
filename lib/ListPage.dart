import 'package:flutter/material.dart';

typedef HeaderWidgetBuild = Widget Function(BuildContext context, int position);
typedef ItemWidgetBuild = Widget Function(BuildContext context, int position);

class ListPage extends StatefulWidget {
  List headerList;
  List listData;
  ItemWidgetBuild itemWidgetCreator;
  HeaderWidgetBuild headerCreator;

  ListPage(List this.listData,
      {Key key,
        List this.headerList,
        ItemWidgetBuild this.itemWidgetCreator,
        HeaderWidgetBuild this.headerCreator})
      : super(key: key);

  @override
  ListPageState  createState() {
    // TODO: implement createState
    return new ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: new ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int postion) {
          return buildItemWidget(context, postion);
        },
        itemCount: _getListcount(),
      ),
    );
  }

  int _getListcount() {
    int itemCount = widget.listData.length;
    return getHeaderCount() + itemCount;
  }

  int getHeaderCount() {
    int headerCount = widget.headerList != null ? widget.headerList.length : 0;
    return headerCount;
  }

  Widget _headItemWight(BuildContext context, int posttion) {
    if (widget.headerCreator != null) {
      return widget.headerCreator(context, posttion);
    } else {
      return new GestureDetector(
        child: new Padding(padding: new EdgeInsets.all(10.0),
          child: new Text("Header Row $posttion"),),
        onTap: (){
          print('header click $posttion --------------------');
        },
      );
    }
  }

  Widget buildItemWidget(BuildContext context, int index) {
    if (index < getHeaderCount()) {
      return _headItemWight(context, index);
    } else {
      int pos = index - getHeaderCount();
      return _itemBuildWidget(context, pos);
    }
  }

  Widget _itemBuildWidget(BuildContext context, int index) {
    if (widget.itemWidgetCreator != null) {
      return widget.itemWidgetCreator(context, index);
    } else {
      return new GestureDetector(
        child: new Padding(
            padding: new EdgeInsets.all(10.0), child: new Text("Row $index")),
        onTap: () {
          print('click $index --------------------');
        },
      );
    }
  }
}
