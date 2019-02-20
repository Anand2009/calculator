import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}
class HomePageState extends State<HomePage>{
  var num1 =0 , num2 =0 , sum =0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear(){
    setState(() {
        t1.text = "0";
        t2.text = "0";
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
            style: new TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black26
            ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter Number 2"
              ),
              controller: t2,
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("+"),
                    color: Colors.green,
                    onPressed: doAdd,
                    ),
                new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blue,
                    onPressed: doSub,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("*"),
                    color: Colors.deepOrange,
                    onPressed: doMul,
                ),
                new MaterialButton(
                    child: new Text("/"),
                    color: Colors.redAccent,
                    onPressed: doDiv,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.deepPurple,
                    onPressed: doClear)

              ],
            )
          ],
        ),
        ),
      );
  }
}