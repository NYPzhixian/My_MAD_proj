import 'package:flutter/material.dart';
import '../body.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Center(
        child: Container(
          color: Colors.amber[100],
          width: 500,
          height: 580,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "QR Scanner",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset("images/randomQr.png"),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Scan The QR To Add To Cart",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text("Step 1",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "After you have seated, the server will pass you a QR paper",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Step 2",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Locate the QR code at the paper given",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Step 3",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Click the button below to use your phone camera to scan the QR code",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    return Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  child: Text('Capture QR'))
            ],
          ),
        ),
      ),
    ));
  }
}
