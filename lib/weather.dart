import 'package:flutter/material.dart';
class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'),backgroundColor: Colors.grey,),
      body: Center(child: Text('WEATHER',style: TextStyle(fontSize: 25),),
      ),
    );

  }
}
