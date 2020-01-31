import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thy_clone/dto/flight_info_dto.dart';
import 'package:thy_clone/models/tickets.dart';
import 'package:thy_clone/widgets/dialogs/dialogs.dart';

import 'flight_info.dart';

class Flights extends StatefulWidget {
  static final String pageRoute = '/flights';

  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          textTheme: TextTheme(title: TextStyle(color: Colors.blue)),
          iconTheme: IconThemeData(color: Colors.blue),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[Text('IST'), Text('İstanbul (Tümü)')],
              ),
              SizedBox(width: 5),
              Icon(
                FontAwesomeIcons.plane,
                size: 20,
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Text('NYC'), Text('New York (Tümü)')],
              ),
            ],
          ),
          actions: <Widget>[
            Container(
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: MaterialButton(
                  splashColor: Theme.of(context).primaryColor,
                  child: Text('İptal',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  onPressed: () => cancel(context),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorWeight: 10,
            tabs: <Widget>[
              Tab(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '31',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('Cum'), Text('Oca')],
                  )
                ],
              )),
              Tab(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '1',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('Cmt'), Text('Şub')],
                  )
                ],
              )),
              Tab(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '2',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('Paz'), Text('Şub')],
                  )
                ],
              )),
              Tab(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('Pzt'), Text('Şub')],
                  )
                ],
              )),
              Tab(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('Sal'), Text('Şub')],
                  )
                ],
              )),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('ÜCRET KURALLARI',
                    style: TextStyle(fontSize: 15, color: Colors.grey[700])),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  ListView.builder(
                    itemCount: tickets.length,
                    itemBuilder: (context, index) {
                      Tickets ticket = tickets[index];
                      return Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 100,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                        ticket.anadoluJet == false
                                            ? 'assets/images/thy_symbol.png'
                                            : 'assets/images/anadolujet_symbol.png',
                                        width: 30),
                                    SizedBox(height: 3),
                                    GestureDetector(
                                      onTap: () => Navigator.of(context)
                                          .pushNamed(FlightInfo.pageRoute, arguments: FlightInfoDto(ticket)),
                                      child: Icon(FontAwesomeIcons.infoCircle,
                                          color: Colors.grey, size: 30),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(ticket.departureHour,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                          Text(ticket.arrivalHour,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.black,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 3,
                                              color: Colors.black,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.black,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(ticket.departure,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 15)),
                                          Text(ticket.arrival,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 15)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                color: Colors.indigo[900],
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text('${ticket.price} TRY',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)),
                                    ),
                                    Icon(Icons.keyboard_arrow_down,
                                        color: Colors.white)
                                  ],
                                ),
                              )
                            ],
                          ));
                    },
                  ),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.indigo[900],
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Toplam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('2.000 TRY',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  color: Theme.of(context).primaryColor,
                  height: 70,
                  child: Center(
                      child: Text(
                    'DEVAM',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
