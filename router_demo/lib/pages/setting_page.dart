import 'package:flutter/material.dart';

class  SettingPage extends StatelessWidget {
  static const SETTING_PAGE_ROUTE = "/settingPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting Page"
        ),
      ),
      body: Center(
        child: Text(
          "Setting"
        ),
      ),
    );
  }
}