import 'package:flutter/material.dart';
import 'package:mad_project/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mad_project/auth.dart';

class MyDrawer extends StatelessWidget {
  Future<void> signOut() async {
    await Auth().signOut();
  }

  final User user = Auth().currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Drawer(
                child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('ZhiXian'),
          accountEmail: Text(user.email),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('images/superhero.jpg'),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () => Navigator.pushReplacementNamed(context, 'home'),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('Profile'),
          onTap: () => Navigator.pushReplacementNamed(context, 'profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('About'),
          onTap: () => Navigator.pushReplacementNamed(context, 'about'),
        ),
        ListTile(
            leading: Icon(Icons.logout),
            title: Text('LogOut'),
            onTap: () => signOut()),
      ],
    ))));
  }
}
