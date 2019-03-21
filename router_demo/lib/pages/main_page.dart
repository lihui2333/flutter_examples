import 'package:flutter/material.dart';
import 'package:router_demo/pages/list_demo.dart';
import 'dropdown_page.dart';
import 'girdview_page.dart';
import 'drawer_page.dart';
import 'calculator_page.dart';
import 'tab_nav_page.dart';

class MainPage extends StatelessWidget {
  static const MAIN_PAGE_ROUTE = "/mainPage";
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButton("list",context),
          buildButton("dropdownButton", context),
          buildButton("gridview", context),
          buildButton("drawerpage", context),
          buildButton("calculatorPage", context),
          buildButton("tabnavpage", context),
        ],
      ),
    );
  }

  Widget buildButton(String title,BuildContext context) {
    Widget button =RaisedButton(
      child: Text(
        title
      ),
      splashColor: Colors.redAccent,
      color: Colors.lightBlueAccent,
      onPressed: (){
        jumpTopage(title,context);
      },
    );
    return  button;
  }

  jumpTopage(String title,BuildContext context) {
    switch (title) {
      case "list": 
        Navigator.of(context).pushNamed(ListPage.LIST_PAGE_ROUTE);
        break;
      case "dropdownButton": 
        Navigator.of(context).pushNamed(DropDownPage.DROPDOWN_PAGE_ROUTE);
        break;
      case "gridview": 
        Navigator.of(context).pushNamed(GirdPage.GridPageRoute);
        break; 
      case "drawerpage": 
        Navigator.of(context).pushNamed(DrawerPage.DRAWER_PAGE_ROUTE);
        break;
      case "calculatorPage": 
        Navigator.of(context).pushNamed(CalculatorPage.CALCUATOR_PAGE_ROUTE);
        break;
      case "tabnavpage": 
      Navigator.of(context).pushNamed(TabNavPage.TAB_NAV_PAGE_ROUTE);
      break;
      default:
    }
  }

}