import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WeatherDetails extends StatefulWidget {
  String city = "";
  WeatherDetails(this.city);
  @override
  _WeatherDetailsState createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  var weatherData;
  @override
  void initState() {
    super.initState();
    getData(widget.city);
  }

  getData(String city) {
    String url =
        "https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=b5127379c20b77342592ff02ff66440f";
    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        this.weatherData = json.decode(resp.body);
        print(this.weatherData);
        print(resp.body);
      });
    }).catchError((err) {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather of city ${widget.city}'),
          backgroundColor: Colors.grey,
        ),
        body: (weatherData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount:
                    (weatherData == null ? 0 : weatherData['list'].length),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    //List Items
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "images/${weatherData['list'][index]['weather'][0]['main'].toString().toLowerCase()}.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${new DateFormat('E-dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(weatherData['list'][index]['dt'] * 1000000))}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "${new DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(weatherData['list'][index]['dt'] * 1000000))}"
                                      " | ${weatherData['list'][index]['weather'][0]['main']}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                              "${weatherData['list'][index]['main']['temp'].round()}°C"
                                  .toString(),
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  );
                })));
  }
}
