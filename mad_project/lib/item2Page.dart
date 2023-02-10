import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'body.dart';

bool checkItem2 = false;
String itemName = "Sizziling A5 Wagyu Burger";
int price = 15;

class Item2 extends StatefulWidget {
  @override
  _Item2State createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Xtreme Spicy Burger'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  "images/burger2.png",
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
                              "\$15",
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
                              "Xtreme Spicy Burger",
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
                            checkItem2 = true;
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
