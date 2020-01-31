import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thy_clone/models/ticket_types.dart';

class SelectTicketDetail extends StatefulWidget {
  @override
  _TicketDetailState createState() => _TicketDetailState();
}

class _TicketDetailState extends State<SelectTicketDetail> {
  bool isEconomy = true;
  int totalPassenger = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Material(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Yolcu Sayısı',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '$totalPassenger',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 45),
                          ),
                          passengerIcon()
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEconomy = !isEconomy;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Kabin',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300)),
                        SizedBox(height: 5),
                        Text(isEconomy ? 'ECONOMY' : 'BUSINESS',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 22))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                TicketTypes ticketType = tickets[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 70,
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[300]))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(ticketType.type,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          Text(ticketType.age,
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onLongPress: (){
                              setState(() {
                                totalPassenger = 1;
                                resetPassengerCount();
                              });
                            },
                            onTap: () {
                              setState(() {
                                if (ticketType.count != 0) {
                                  ticketType.count--;
                                  totalPassenger--;
                                }
                              });
                            },
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                          SizedBox(width: 5),
                          Text('${ticketType.count}',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (ticketType.count < 9) {
                                  ticketType.count++;
                                  totalPassenger++;
                                }
                              });
                            },
                            child: Icon(FontAwesomeIcons.plus),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container passengerIcon() {
    return Container(
      width: 150,
      height: 50,
      child: totalPassenger <= 3
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: totalPassenger,
              itemBuilder: (context, index) {
                return Container(
                    width: 20,
                    child: Icon(FontAwesomeIcons.male,
                        size: 40, color: Colors.blue));
              },
            )
          : ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 20,
                    child: Icon(FontAwesomeIcons.male,
                        size: 40, color: Colors.blue)),
                Container(
                    width: 20,
                    child: Icon(FontAwesomeIcons.male,
                        size: 40, color: Colors.blue)),
                Container(
                    width: 20,
                    child: Icon(FontAwesomeIcons.male,
                        size: 40, color: Colors.blue)),
                Container(
                    width: 20,
                    child: Icon(FontAwesomeIcons.plus,
                        size: 20, color: Colors.blue))
              ],
            ),
    );
  }
}
