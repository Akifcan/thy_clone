import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thy_clone/screens/login.dart';


cancel(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AlertDialog(
                titlePadding: const EdgeInsets.all(0),
                contentPadding: const EdgeInsets.all(0),
                title: Material(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Dikkat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 100),
                      child: Text(
                          'İşleminizi iptal ederek anasayfaya döneceksiniz. Emin misiniz?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          textAlign: TextAlign.center),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              color: Colors.indigo[900],
                              height: 50,
                              width: 150,
                              child: Center(
                                  child: Text('İptal',
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pushNamed(Login.pageRoute),
                            child: Container(
                              color: Theme.of(context).primaryColor,
                              height: 50,
                              width: 150,
                              child: Center(
                                  child: Text('Devam',
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ));
        });
  }