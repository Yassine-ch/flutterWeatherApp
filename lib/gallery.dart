import 'package:flutter/material.dart';
class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'),backgroundColor: Colors.grey,),
      body: Center(child: Text('GALLERY',style: TextStyle(fontSize: 25),),
      ),
    );

  }
}
