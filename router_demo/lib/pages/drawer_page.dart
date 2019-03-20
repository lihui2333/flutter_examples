import 'package:flutter/material.dart';
import 'setting_page.dart';
import 'account_page.dart';

class DrawerPage extends StatefulWidget {
  static const DRAWER_PAGE_ROUTE = "/drawerpage";
  createState() => _DrawerPage();
}

class _DrawerPage extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    Widget body = Center(
      child: Text(
        "Home Screen"
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Pgae"
        ),
      ),
      body: body,
      drawer: getNavDrawer(context)
    );
  }

  Widget getNavDrawer(BuildContext context) {
    Widget drawerHeader = DrawerHeader(
      child: Text(
        "Header"
      ),
    );
    var aboutChild = new AboutListTile(
        child: new Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: new Icon(Icons.),
        icon: new Icon(Icons.info));
    return Drawer(
      child: ListView(
        children: <Widget>[
          drawerHeader,
          buildListItem(context, "Setting", Icons.settings, SettingPage.SETTING_PAGE_ROUTE),
          buildListItem(context, "Home", Icons.home,DrawerPage.DRAWER_PAGE_ROUTE),
          buildListItem(context, "Account", Icons.contacts, AccountPage.ACCOUNT_PAGE_ROUTE),
          aboutChild
        ],
      ),
    );
  }

  buildListItem (BuildContext context,String title,IconData iconData,String route){
    ListTile item = ListTile(
      leading: Icon(iconData),
      title: Text(title),
      onTap: () {
        setState(() {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(route);
        });
      }
    );
    return item;
  }
}