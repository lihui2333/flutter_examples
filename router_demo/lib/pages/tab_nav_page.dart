import 'package:flutter/material.dart';

class TabNavPage extends StatefulWidget {
  static const String TAB_NAV_PAGE_ROUTE = "/tabNavPage";
  @override
  State<StatefulWidget> createState() {
    return TabNavPageState();
  }
}

class TabNavPageState extends State<TabNavPage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TabNav"
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          TabPage(
            title: "first",
          ),
          TabPage(
            title: "second",
          ),
          TabPage(
            title: "third",
          )
        ],
        controller: controller
      ),
    bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.favorite),
            ),
            new Tab(
              icon: new Icon(Icons.adb),
            ),
            new Tab(
              icon: new Icon(Icons.airport_shuttle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final String title;
  const TabPage ({
    Key key,
    @required this.title,
  }
  ):super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Center(
        child: Text(
          title
        )
    );
  }
}