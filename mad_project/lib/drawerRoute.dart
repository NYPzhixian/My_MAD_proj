import 'package:firebase_auth/firebase_auth.dart';
import 'package:mad_project/auth.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/login_register_page.dart';
import 'drawer.dart';
import 'body.dart';
import 'profile.dart';
import 'about.dart';

class DrawerRoute extends StatefulWidget {
  final User user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DrawerRoute> {
  String title = 'Home';
  int index = 0;

  final User user = Auth().currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: user == null ? LoginPage() : Home(),
        initialRoute: user == null ? 'login' : 'home',
        routes: {
          'login': (context) => LoginPage(),
          'home': (context) => Home(),
          'profile': (context) => Profile(),
          'about': (context) => About()
        });
  }
}
