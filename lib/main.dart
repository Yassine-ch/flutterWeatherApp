import './main-drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart';
import './gallery.dart';
import './camera.dart';
import './weather.dart';
void main() => runApp(MaterialApp(
  home :MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer :MainDrawer(),
      appBar: AppBar(title: Text('MyApp'),backgroundColor: Colors.grey,),
      body: Center(child: Text('hello app'),),
    );
  }
}
