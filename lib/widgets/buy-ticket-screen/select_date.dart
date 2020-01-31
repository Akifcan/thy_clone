import 'package:flutter/material.dart';

class SelectDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return      Container(
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      selectDate('Gidiş Tarihi', 31, 'Oca'),
                      selectDate('Dönüş Tarihi', 3, 'Şub'),
                    ],
                  ),
                );
  }
    Expanded selectDate(String type, int day, String month) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              type,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
            ),
            Row(
              children: <Widget>[
                Text('$day',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(month,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15)),
                    Text('2020',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}