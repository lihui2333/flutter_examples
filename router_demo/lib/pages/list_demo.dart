import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  static const LIST_PAGE_ROUTE = "/listPage";
  @override
  Widget build(BuildContext context) {
    List<Widget> items =List();
    for (var i = 0; i < 100; i++) {
      Widget item = buildItem(context, "第$i个标题", "第$i个副标题");
      items.add(item);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Demo"
        ),
      ),
      body: ListView(
        children: items,
      )
    );
  }
  
  Widget buildItem(BuildContext context,String title,String subTitle) {
    Widget widget = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 10
          ),
          child: CircleAvatar(
            child: Text(
              title[0]
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 10,
                bottom: 10
              ),
              child: Text(
                subTitle,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            )
          ],
        )

      ],
    );
    return widget;
  }
}