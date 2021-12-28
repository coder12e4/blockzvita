import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class view_all extends StatefulWidget {
  @override
  _view_allState createState() => _view_allState();
}

class _view_allState extends State<view_all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [],
        leading: GestureDetector(
            onTap: () {
            //  Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 20,show_appbar: true,)));
            Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Restaurant Name".toUpperCase(),
          style: TextStyle(color: Colors.black,
            letterSpacing: 1,
            fontSize: 16,
            fontWeight: FontWeight.w400, // light
            fontStyle: FontStyle.normal,

          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 70),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30,left: 20),
              child: Text("User Reviews".toUpperCase(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,letterSpacing: 1,color: HexColor("272727")),)
              ,
            ),
            Container(
              margin: EdgeInsets.only(top: 4,left: 20,bottom: 30),
              child: Text("(101 Review)",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 1,color: HexColor("484848")),)
              ,
            ),

            Expanded(
                child: new ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: () {},
                        child: new Container(
                          margin: EdgeInsets.only(left: 14, right: 14, top: 15),

                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRect(
                                child: Image.asset(
                                  "assets/user_rest.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "User Name",
                                    style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                        fontSize: 15, color: HexColor("383838")),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Lorem contant of review  ",
                                    style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                        fontSize: 11, color: HexColor("484848")),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text("5",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: HexColor("A5A5A5"))),
                                      RatingBar.builder(
                                        initialRating: 3,
                                        itemSize: 11,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],


                          ),

                        ),

                      );
                    }))
            





          ],
        ),
      ),

    );
  }
}
