import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thy_clone/widgets/login-screens/info.dart';

import 'buy_ticket.dart';

class Login extends StatelessWidget {

  static final String pageRoute = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(FontAwesomeIcons.bars),
        centerTitle: true,
        title: Image.asset('assets/images/logo.png', width: 200),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => null,
            iconSize: 30,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Info(),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton(context, 'Bilet al', (){
                      Navigator.of(context).pushNamed(BuyTicket.pageRoute);
                    }),
                    SizedBox(height: 10),
                    createButton(context, 'Check-in', null),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector createButton(BuildContext context, String title, Function function) {
    return GestureDetector(
      onTap: function,
          child: Container(
        width: 180,
        height: 70,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
