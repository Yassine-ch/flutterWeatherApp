import 'package:flutter/material.dart';
class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'),backgroundColor: Colors.grey,),
      body: Center(child: Text('CAMERA',style: TextStyle(fontSize: 25),),
      ),
    );

  }
}
