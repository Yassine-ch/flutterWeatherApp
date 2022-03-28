import 'package:appyouss/camera.dart';
import 'package:appyouss/gallery.dart';
import 'package:appyouss/quiz.dart';
import 'package:appyouss/weather.dart';
import 'package:flutter/material.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:<Widget> [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.grey])
            ),
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/log.jpg'),
              ),
            ),
          ),
          ListTile(
            title:Text('Quiz',style: TextStyle(fontSize:20),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz()));
            },
          ),
          Divider(color: Colors.black,height: 6,),
          ListTile(
            title:Text('Wearther',style: TextStyle(fontSize:20),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Weather()));
            },
          ),
          Divider(color: Colors.black,height: 6,),
          ListTile(
            title:Text('Gallery',style: TextStyle(fontSize:20),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
            },
          ),
          Divider(color: Colors.black,height: 6,),
          ListTile(
            title:Text('Camera',style: TextStyle(fontSize:20),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CameraPage()));
            },
          ),
        ],
      ),
    );
  }
}
