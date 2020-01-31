import 'package:flutter/material.dart';

class SelectAirport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.indigo[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          selectAirport('IST', 'İstanbul (Tümü)'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  child: Container(color: Colors.blueGrey),
                  width: 3,
                  height: 40),
              RawMaterialButton(
                padding: const EdgeInsets.all(9),
                onPressed: () => null,
                shape: CircleBorder(side: BorderSide(color: Colors.white)),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.white,
                      size: 25,
                    ),
                    Icon(Icons.flight_land, color: Colors.white, size: 25),
                  ],
                ),
              ),
              SizedBox(
                  child: Container(color: Colors.blueGrey),
                  width: 3,
                  height: 40),
            ],
          ),
          selectAirport('NYC', 'New York (Tümü)')
        ],
      ),
    );
  }

  Expanded selectAirport(String airport, String city) {
    return Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nereye',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            Text(airport,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(city,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
