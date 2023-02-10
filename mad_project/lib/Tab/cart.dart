import 'package:flutter/material.dart';
import '../checkout.dart';
import '../item1Page.dart' as item1;
import '../item2Page.dart' as item2;
import '../item3Page.dart' as item3;

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    int itemCount = 0;
    int subTotal = 0;
    int total = 0;
    item1.checkItem1 == true ? subTotal += item1.price : null;
    item2.checkItem2 == true ? subTotal += item2.price : null;
    item3.checkItem3 == true ? subTotal += item3.price : null;

    item1.checkItem1 == true ? itemCount += 1 : null;
    item2.checkItem2 == true ? itemCount += 1 : null;
    item3.checkItem3 == true ? itemCount += 1 : null;
    total = subTotal;
    total >= 5 ? total += 2 : null;

    return Scaffold(
        body: Container(
            color: Colors.orange[100],
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 10, bottom: 10),
                          child: Text(
                            "Cart List",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        item1.checkItem1 == true
                            ? Padding(
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Container(
                                  width: 380,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "images/burger1.png",
                                          height: 80,
                                          width: 150,
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Sizziling A5 Wagyu Burger",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                "Taste out Sizziling, Cheesy, Saucy Wagyu Beef burger",
                                                style: TextStyle(fontSize: 14)),
                                            Text(
                                              "\$" + item1.price.toString(),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Text(''),
                        item3.checkItem3 == true
                            ? Padding(
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Container(
                                  width: 380,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "images/burger3.png",
                                          height: 80,
                                          width: 150,
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Cheezzzzzy Bacon Burger",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                "Taste out Sizziling, Cheesy, Saucy Wagyu Beef burger",
                                                style: TextStyle(fontSize: 14)),
                                            Text(
                                              "\$" + item3.price.toString(),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Text(''),
                        item2.checkItem2 == true
                            ? Padding(
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Container(
                                  width: 380,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "images/burger2.png",
                                          height: 80,
                                          width: 150,
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Xtreme Spicy Burger",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                "Taste out Spicy, Cheesy, Saucy  Chicken burger",
                                                style: TextStyle(fontSize: 14)),
                                            Text(
                                              "\$" + item2.price.toString(),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Text(""),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Items: ",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        itemCount.toString(),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Subtotal: ",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        "\$" + subTotal.toString(),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                total >= 5
                                    ? Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Service Charge: ",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              "\$2",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Text(''),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Total: ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$" + total.toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Total: ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$" + total.toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Checkout()),
                                        );
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.orange)),
                                      child: Text('Pay'))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
