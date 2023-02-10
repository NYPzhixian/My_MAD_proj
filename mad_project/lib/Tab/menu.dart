import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mad_project/CategoriesWidget.dart';
import 'package:mad_project/MenuItemWidget.dart';

final List<String> imgList = ['images/banner1.jpg', 'images/banner2.jpg'];

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Colors.orange[300]])),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "What's New!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // *
                  // *
                  // *
                  // *
                  // Carousel slider Widgets
                  CarouselSlider(
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    width: 1000,
                                  ),
                                ),
                              ))
                          .toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      )),

                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Search...',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  // *
                  // *
                  // *
                  // *
                  // Categories Widgets
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Text("Categories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CategoriesWidget(),

                  // *
                  // *
                  // *
                  // *
                  // Menu  Items Widgets
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Text("Items",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ],
                  ),
                  MenuItemWidget(),
                ]))));
  }
}
