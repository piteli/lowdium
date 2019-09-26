import 'package:flutter/material.dart';

void main() => runApp(new Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home : new Scaffold()
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}): super(key : key);

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>{
  Widget _getLoadingStateWidget(){
    return new Center(
      child : new CircularProgressIndicator()
    );
  }

  Widget getCurrentStateWidget(){
    Widget currentStateWidget;
    currentStateWidget = _getLoadingStateWidget();
    return currentStateWidget;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar : new AppBar(
        title : new Text("Title"),
      ),
      body : getCurrentStateWidget()
    );
  }
}