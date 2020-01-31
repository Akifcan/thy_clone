import 'package:flutter/material.dart';
import 'package:thy_clone/screens/buy_ticket.dart';
import 'package:thy_clone/screens/flight_info.dart';
import 'package:thy_clone/screens/flights.dart';
import 'package:thy_clone/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turkish Airlines - (Clone)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[700],
      ),
      home: Login(),
      routes: {
        Login.pageRoute: (context) => Login(),
        BuyTicket.pageRoute: (context) => BuyTicket(),
        Flights.pageRoute: (context) => Flights(),
        FlightInfo.pageRoute: (context) => FlightInfo()
      },
    );
  }
}