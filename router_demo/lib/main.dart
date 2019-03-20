import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'pages/list_demo.dart';
import 'pages/dropdown_page.dart';
import 'pages/girdview_page.dart';
import 'pages/drawer_page.dart';
import 'pages/setting_page.dart';
import 'pages/account_page.dart';


void main() => runApp(MaterialApp(
  routes: <String, WidgetBuilder>{
      // Set named routes
      MainPage.MAIN_PAGE_ROUTE: (BuildContext context) => MainPage(),
      ListPage.LIST_PAGE_ROUTE: (BuildContext context) => ListPage(),
      DropDownPage.DROPDOWN_PAGE_ROUTE: (BuildContext context) => DropDownPage(),
      GirdPage.GridPageRoute: (BuildContext context) => GirdPage(),
      DrawerPage.DRAWER_PAGE_ROUTE: (BuildContext context) => DrawerPage(),
      AccountPage.ACCOUNT_PAGE_ROUTE: (BuildContext context) => AccountPage(),
      SettingPage.SETTING_PAGE_ROUTE: (BuildContext context) => SettingPage(),
      
    },
  home: Scaffold(
    appBar: AppBar(
      title: Text(
        "Route Demo"
      ),
    ),
    body: MainPage(),
  ),
));



