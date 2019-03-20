import 'package:flutter/material.dart';

class  AccountPage extends StatelessWidget {
  static const ACCOUNT_PAGE_ROUTE = "/accountPage";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      appBar: AppBar(
        title: Text(
          "Account Page"
        ),
      ),
      body: Center(
        child: Text(
          "Account"
        ),
      ),
    );
  }
}