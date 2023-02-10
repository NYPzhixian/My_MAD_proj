import 'package:mad_project/auth.dart';
import 'login_register_page.dart';
import 'package:flutter/material.dart';
import 'drawerRoute.dart';

class WidgetTree extends StatefulWidget {
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

Future<void> signOut() async {
  await Auth().signOut();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(body: DrawerRoute());
        } else {
          return Scaffold(body: LoginPage());
        }
      },
    );
  }
}
