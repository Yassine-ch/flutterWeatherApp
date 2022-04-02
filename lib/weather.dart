import './weather-detail.dart';
import 'package:flutter/material.dart';
class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CITY'),backgroundColor: Colors.grey,),
      body: Column(
        children:<Widget> [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: ('choose a city')),
                onChanged: (value){

                  setState(() {
                    this.city=value;
                  });
                },
              ),
            ),
          ),
          Container(
            width: 150,
            child: RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                child: Text('Get Weather',style: TextStyle(fontSize: 20),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherDetails(city)));
                },
             ),
          )
        ],
      ),

    );

  }
}
