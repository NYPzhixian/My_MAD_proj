import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('About')),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.orange[100],
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         colors: [Colors.orange[400], Colors.white])),
            // padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(image: AssetImage('images/about-banner.jpg')),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'About The App',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(9),
                  child: Text(
                    "This app is created to allow user to efficiently order our delicious food in this single use app, BurgerVio believes in the IT next generation and will continue to deliver the best customer service to all our diners. This app is developed by a local school student in Nanyang Polytechnic, Cho Zhi Xian",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.brown[400],
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Reserve A Table',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  color: Colors.brown[100],
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              '● Reservation must be made at least a day in advance.'),
                          SizedBox(height: 10),
                          Text(
                              "●  No same-day reservation will be accepted on WEEKENDS and Public Holidays. However, we do allow walk-ins on a FIRST COME FIRST SERVE BASIS."),
                          SizedBox(height: 10),
                          Text(
                              "● Reservation more than 12 pax, kindly call us directly at 6291 4252. Subjected to availability."),
                          SizedBox(height: 10),
                          Text("● Dining time is good for 1 hours maximum."),
                          SizedBox(height: 10),
                          Text(
                              "● We are closed every last Monday of the month."),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: FlatButton(
                          onPressed: () => launch("tel://+656291 4252"),
                          child: new Text(
                            "Contact Us Now!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.brown[400],
                          textColor: Colors.white),
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                Container(
                    height: 270,
                    color: Colors.brown[100],
                    child: Column(
                      children: [
                        Container(
                          color: Colors.brown[400],
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Drop Us A Mail',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  '● Have any enquiries about the App or the Restaurant?'),
                              SizedBox(height: 10),
                              Text(
                                  "●  Found a bug? Letting us know will be greatly appreciated "),
                              SizedBox(height: 10),
                              Text(
                                  "● We will reply you witin 2 working days, for urgent assistant please contact our call centre +656291 4252"),
                              SizedBox(height: 10),
                              Text(
                                  "● We seek your feedback to continually imrpove and serve you better"),
                              SizedBox(height: 10),
                              Text("● Your feedback is important to us."),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: FlatButton(
                              onPressed: () =>
                                  launch("mailto:burgervio@gmail.com"),
                              child: new Text("Drop us an Email!",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.brown[400],
                              textColor: Colors.white),
                        ),
                      ],
                    )),

                //  GFButton(
                //   onPressed: () {},
                //   text: "Facebook",
                //   icon: Icon(FontAwesomeIcons.facebook,
                //       color: Colors.black, size: 25.0),
                //   type: GFButtonType.solid,
                //   fullWidthButton: true,
                // ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Community',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    GFButton(
                      color: Colors.pink,
                      onPressed: () {},
                      text: "Instagram",
                      icon: Icon(FontAwesomeIcons.instagram, size: 25.0),
                      type: GFButtonType.solid,
                      fullWidthButton: true,
                    ),
                    GFButton(
                      onPressed: () {},
                      text: "Facebook",
                      icon: Icon(FontAwesomeIcons.facebook,
                          color: Colors.black, size: 25.0),
                      type: GFButtonType.solid,
                      fullWidthButton: true,
                    ),
                    GFButton(
                      color: Colors.lightGreen[600],
                      onPressed: () {},
                      text: "WhatsApp",
                      icon: Icon(FontAwesomeIcons.whatsapp,
                          color: Colors.black, size: 25.0),
                      type: GFButtonType.solid,
                      fullWidthButton: true,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
