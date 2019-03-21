import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  static const CALCUATOR_PAGE_ROUTE = "/calculatorPage";
  @override
  State<StatefulWidget> createState() => CalculatorPageState();
}

class CalculatorPageState extends State<CalculatorPage> {
  String priceStr;
  String tipsStr;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator"
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text("Simple Calculator"),
            TextField(
              decoration: InputDecoration(
                labelText: "Bill amount(\$)"
              ),
              onChanged: (String text) {
                priceStr = text;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Tips(%)",
              ),
              onChanged: (String text) {
                tipsStr = text;
              },
            ),
            RaisedButton(
              child: Text(
                "calculator",
              ),
              onPressed: (){
                double tips = double.parse(tipsStr);
                double amount = double.parse(priceStr);
                double all = tips + amount;
                tips = amount * tips / 100;
                AlertDialog dialog = AlertDialog(
                  content: Text(
                    "Tips \$$tips\n" + "Amount \$$all"
                  ),
                );
                showDialog(context: context, builder: (BuildContext context) => dialog);
              },
            )
          ],
        ),
      )
    );
  }
  
}