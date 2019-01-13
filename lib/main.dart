import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _value = "Hello world";

  void onRaiseButtonPressed() {
    setState(() {
          _value = "Raised Button Pressed!";
        });
  }

  void onFlatButtonPressed() {
    setState(() {
          _value = "Flat Button Pressed!";
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_value),
            new RaisedButton(onPressed: onRaiseButtonPressed, child: new Text("Click Me!"),),
            new FlatButton(onPressed: () => onFlatButtonPressed(), child: new Text("Click Me!"),)
          ],
        ),
      ),
    );
  }
}