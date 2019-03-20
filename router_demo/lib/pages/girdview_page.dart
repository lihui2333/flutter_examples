import 'package:flutter/material.dart';

class GirdPage extends StatelessWidget  {

  static const GridPageRoute = "/girdpage";
  @override
  Widget build(BuildContext context) {
    List<Widget> dataList = [
      buildItem(context, "Facebook", "social/facebook.png"),
      buildItem(context, "Twitter", "social/twitter.png"),
      buildItem(context, "Instagram", "social/instagram.png"),
      buildItem(context, "Linkedin", "social/linkedin.png"),
      buildItem(context, "Google Plus", "social/google_plus.png"),
      buildItem(context, "LnuncherIcon", "ic_launcher.png"),
    ];
    
    GridView girdView = GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: dataList
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GirdView"
        ),
      ),
      body: girdView,
    );
  }
  buildItem(BuildContext context,String title,String image) {
    Card card = Card(
      elevation: 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Image(image: AssetImage('data_repo/img/' + image)),
          Center(
            child: Text(
              title
            ),
          )
        ],
      ),
    );
    return card;
  }  
}