import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  
  static const DROPDOWN_PAGE_ROUTE = "/dropdownPage";
  @override
  State<StatefulWidget> createState() {
    
    return _DropDownPageState();
  }

  
}

class  _DropDownPageState extends State<DropDownPage> {
  @override
  void initState() {
    
    _selectedOne = "Apple";
    super.initState();
  }

  String _selectedOne;
  @override
  Widget build(BuildContext context) {
    Widget page = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Please choose a fruit"
            ),
            DropdownButton(     
              value: _selectedOne,       
              onChanged: changeUpdate,
              items:[
                DropdownMenuItem(
                  child: Text(
                    "Apple"
                  ),
                  value: "Apple"
                ),
                DropdownMenuItem(
                  child: Text(
                    "Banana"
                  ),
                  value: "Banana"
                ),
                DropdownMenuItem(
                  child: Text(
                    "Pineapple"
                  ),
                  value: "Pineapple",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Mango"
                  ),
                  value: "Mango",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Grapes"
                  ),
                  value: "Grapes"
                )
              ] ,
            ),
            Text(
              "you selected $_selectedOne",
              style: TextStyle(
                color: Colors.grey[500]
              ),
            )
          ],
        ),
      );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DropdownButton"
        ),
      ),
      body: page,
    );
  }

  changeUpdate (String fruit) {
    setState(() {
      _selectedOne = fruit;
    });
  }
  
}