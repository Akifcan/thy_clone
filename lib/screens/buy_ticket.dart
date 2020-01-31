import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thy_clone/widgets/buy-ticket-screen/select_airport.dart';
import 'package:thy_clone/widgets/buy-ticket-screen/select_date.dart';
import 'package:thy_clone/widgets/buy-ticket-screen/select_ticket_detail.dart';
import 'package:thy_clone/widgets/dialogs/dialogs.dart';

import 'flights.dart';
import 'login.dart';

class BuyTicket extends StatefulWidget {
  static final String pageRoute = '/buy-ticket';
  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.indigo[900],
            leading: Icon(FontAwesomeIcons.bars),
            title: Text('Bilet al'),
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: MaterialButton(
                  splashColor: Theme.of(context).primaryColor,
                  child: Text('İptal',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  onPressed: () => cancel(context),
                ),
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelPadding: const EdgeInsets.only(bottom: 20, top: 20),
              indicatorWeight: 7,
              tabs: <Widget>[
                Text('TEK YÖN'),
                Text('GİDİŞ-DÖNÜŞ'),
                Text('ÇOKLU UÇUŞ'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('tek yön'),
            Column(
              children: <Widget>[
                SelectAirport(),
                SelectDate(),
                SelectTicketDetail()
              ],
            ),
            Text('Çoklu uçuş'),
          ],
        ),
        bottomNavigationBar: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  height: 60,
                  color: Colors.indigo[900],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.table_chart,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text('Esnek Tarihler',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  )),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(Flights.pageRoute),
                child: Container(
                    height: 60,
                    color: Theme.of(context).primaryColor,
                    child: Center(
                        child: Text(
                      'Uçuş Ara',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
