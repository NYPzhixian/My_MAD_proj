library mad_project.globals;

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'body.dart';

bool checkItem1 = false;
String itemName = "Sizziling A5 Wagyu Burger";
int price = 10;

class Item1 extends StatefulWidget {
  @override
  _Item1State createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Sizziling A5 Wagyu Burger'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  "images/burger1.png",
                  height: 290,
                ),
              ),
              Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.orangeAccent[100],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\$10",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "Sizziling A5 Wagyu Burger",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                            "Taste out best burger in the menu with juicy beef patty and bacon top with the most freshes tomatoes and salad, featuring our top in house made secret sauce "),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            checkItem1 = true;
                            Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                    builder: (context) => Home(),
                                    maintainState: false));
                          },
                          child: const Text('Add To Cart')),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
