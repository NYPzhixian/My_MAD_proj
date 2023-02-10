import 'package:flutter/material.dart';
import 'package:mad_project/Tab/cart.dart';
import 'package:mad_project/Tab/table.dart';
import 'package:mad_project/Tab/menu.dart';
import 'drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mad_project/auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  final User user = Auth().currentUser;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> signOut() async {
    await Auth().signOut();
  }

  int _index = 0;

  final List<Widget> _tabs = [Menu(), Info(), Cart()];
  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  final User user = Auth().currentUser;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset(
              'images/logo-no-background.png',
              height: 40,
            )),
      ),
      drawer: MyDrawer(),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              title: Text(
                'Menu',
              )),
          new BottomNavigationBarItem(
              icon: Icon(null),
              title: Text('Table Number: \n 1234',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 21))),
          new BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text('Cart'))
        ],
      ),
    );
  }
}
