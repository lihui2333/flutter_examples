import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "",
  home: Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Demo"),
      ),
      body: SnackPage(),
    ),
  )
);
class SnackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      splashColor: Colors.redAccent,
      child: Text(
        "Show SnackBar"
      ),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            "hello can you hear me"
          ),
          action: SnackBarAction(
            label: "hello",
            textColor: Colors.redAccent,
            onPressed: () {
               Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text(
                              "hello from the other side"),
                        ));
            },
          ),
        ));
      },
    );
    return Center(
      child: button,
    );
  }
}


