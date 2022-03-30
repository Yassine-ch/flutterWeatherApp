import 'package:flutter/material.dart';
class WeatherDetails extends StatefulWidget {
  String city="";
  WeatherDetails(this.city);
  @override
  _WeatherDetailsState createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ('Weather of city ${widget.city}'),
      backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Text('Weather'),
      ),
    );
  }
}
