import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thy_clone/dto/flight_info_dto.dart';
import 'package:thy_clone/models/tickets.dart';
import 'package:thy_clone/styles/styles.dart';

class FlightInfo extends StatelessWidget {
  static final String pageRoute = '/flight-info';


  @override
  Widget build(BuildContext context) {
    FlightInfoDto args = ModalRoute.of(context).settings.arguments;
    Tickets ticket = args.tickets;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600)),
        automaticallyImplyLeading: false,
        title: Text('UÇUŞ BİLGİLERİ'),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.times),
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.black,
            splashColor: Colors.red,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Material(
            elevation: 5,
            child: Container(
                height: 120,
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Text(ticket.date.split(' ')[0],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(ticket.date.split(' ')[1].substring(0, 3),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                              Text(ticket.date.split(' ')[2],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 2,
                            height: 50,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(ticket.departureHour,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(ticket.arrivalHour,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 3,
                                        color: Colors.white,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(ticket.departure,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15)),
                                    Text(ticket.arrival,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15)),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            height: 160,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Nereden',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                Text(ticket.departureCity,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text('${ticket.departure} - ${ticket.departureAirportFullName}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300)),
                SizedBox(height: 15),
                Text('Nereye',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                Text(ticket.arrivalCity,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text('${ticket.arrival} - ${ticket.arrivalAirportFullName}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          Expanded(
            
            child: GridView.count(
               padding: const EdgeInsets.all(10),
              crossAxisCount: 2,
              childAspectRatio: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('UÇUŞ NUMARASI', style: flightInfoTitleStyle), Text(ticket.flightNumber, style: flightInfoSubtitleStyle)],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('TAŞIYICI HAVAYOLU', style: flightInfoTitleStyle,), Text(ticket.airline, style: flightInfoSubtitleStyle,)],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('UÇAK TİPİ', style: flightInfoTitleStyle,), Text(ticket.aircraft, style: flightInfoSubtitleStyle,)],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('UÇUŞ SÜRESİ', style: flightInfoTitleStyle,), Text(ticket.estimatedTime, style: flightInfoSubtitleStyle,)],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('KALKIŞ ZAMANI', style: flightInfoTitleStyle,), Text(ticket.departureHour, style: flightInfoSubtitleStyle,)],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('VARIŞ SAATİ', style: flightInfoTitleStyle,), Text(ticket.arrivalHour, style: flightInfoSubtitleStyle,)],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
