import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[800],
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 250,
                    child: Text(
                      'Miles& Smiles üyesi misiniz?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Questrial'),
                    )),
                SizedBox(height: 5),
                Container(
                  width: 320,
                  child: Text(
                    'Ödül bilet ve ücretsiz katılım yüksetlme gibi benzersiz avantajlardan faydalanmak için hemen üye olun',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 50,
            color: Colors.indigo[900],
            child: Center(
              child: Icon(Icons.chevron_right, color: Colors.white, size: 40),
            ),
          )
        ],
      ),
    );
  }
}
