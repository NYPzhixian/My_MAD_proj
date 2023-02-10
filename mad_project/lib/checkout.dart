import 'package:flutter/material.dart';
import 'checkout_complete.dart';
import 'drawer.dart';
import 'dart:async';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final myController = TextEditingController();
  bool edit = false;
  bool _valueOCBC = false;
  bool _valueUOB = false;
  bool _valuePOSB = false;

  Widget build(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();

        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cooking()),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Payment"),
      content: Text("Payment is succesful"),
      actions: [
        okButton,
      ],
    );

    // show the dialog

    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Payment')),
        drawer: MyDrawer(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 250.0,
              color: Colors.brown[100],
              alignment: Alignment.center, // where to position the child
              child: Container(
                height: 210.0,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      "Table Number",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "3251",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Sub-Total: ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "\$32",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Service Charge: ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "\$2",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "GST: ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "8%",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Total: ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "\$36",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 420,
              width: 600,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.amber[600], Colors.brown[100]])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Payment Method ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      /** CheckboxListTile Widget **/
                      child: CheckboxListTile(
                        title: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('**** **** **** 8894'),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Debit/Credit Card'),
                        ),
                        secondary: Image.asset(
                          "images/OCBC-logo.png",
                          height: 75,
                          width: 70,
                        ),
                        autofocus: false,
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        selected: _valueOCBC,
                        value: _valueOCBC,
                        onChanged: (bool value) {
                          setState(() {
                            _valueOCBC = value;
                            _valuePOSB = false;
                            _valueUOB = false;
                          });
                        },
                      ), //CheckboxListTile
                    ), //Container
                  ), //Padding
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      /** CheckboxListTile Widget **/
                      child: CheckboxListTile(
                        title: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('**** **** **** 8894'),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Debit/Credit Card'),
                        ),
                        secondary: Image.asset(
                          "images/POSB-logo.png",
                          height: 75,
                          width: 70,
                        ),
                        autofocus: false,
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        selected: _valuePOSB,
                        value: _valuePOSB,
                        onChanged: (bool value) {
                          setState(() {
                            _valuePOSB = value;
                            _valueUOB = false;
                            _valueOCBC = false;
                          });
                        },
                      ), //CheckboxListTile
                    ), //Container
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      /** CheckboxListTile Widget **/
                      child: CheckboxListTile(
                        title: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('**** **** **** 8894'),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Debit/Credit Card'),
                        ),
                        secondary: Image.asset(
                          "images/UOB-Logo.png",
                          height: 75,
                          width: 70,
                        ),
                        autofocus: false,
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        selected: _valueUOB,
                        value: _valueUOB,
                        onChanged: (bool value) {
                          setState(() {
                            _valueUOB = value;
                            _valueOCBC = false;
                            _valuePOSB = false;
                          });
                        },
                      ), //CheckboxListTile
                    ), //Container
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange)),
                        child: Text('Proceed To Pay')),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
