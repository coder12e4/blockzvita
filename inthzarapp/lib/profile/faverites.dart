import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/restorents/rest_in.dart';
class favorites extends StatefulWidget {
  @override
  _favoritesState createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [

        ],
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("Favorited".toUpperCase(),style: TextStyle( letterSpacing: 1,
          fontWeight: FontWeight.w400,
          fontSize: 16,// light
          fontStyle: FontStyle.normal,
          color: Colors.black),),),
      body: Container(
        margin: EdgeInsets.only(top: 19,bottom: 60),
        width: double.infinity,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>rest_in()));
                },
                child: new Container(

                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child:Stack(children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                "assets/demo_hotell.png",
                                                height: 88,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 140,
                                            height: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Restaurents",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: HexColor("1A1A1A")),
                                                ),
                                                Row(
                                                  children: [
                                                    Text("Location",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: HexColor("A5A5A5"))),
                                                    Expanded(child: SizedBox()),Text("05 KM",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: HexColor("444444")))
                                                  ],
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
                                                      itemPadding: EdgeInsets.symmetric(
                                                          horizontal: 2.0),
                                                      itemBuilder: (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),
                                                    Text("20 ratings",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: HexColor("444444")))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(top: 12,right: 12,child: Icon(Icons.favorite,color: Colors.red,size: 22,))
                              ],),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child:Stack(children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  child: Image.asset(
                                                    "assets/demo_hotell.png",
                                                    height: 88,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 140,
                                                height: 60,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Restaurents",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: HexColor("1A1A1A")),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("Location",
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                color: HexColor("A5A5A5"))),
Expanded(child: SizedBox()),

                                                        Text("05 KM",
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                color: HexColor("444444")))
                                                      ],
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
                                                          itemPadding: EdgeInsets.symmetric(
                                                              horizontal: 2.0),
                                                          itemBuilder: (context, _) => Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          onRatingUpdate: (rating) {
                                                            print(rating);
                                                          },
                                                        ),
                                                        Text("20 ratings",
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                color: HexColor("444444")))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(top: 12,right: 12,child: Icon(Icons.favorite,color: Colors.red,size: 22,))


                                  ],),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],),),
              );
            },
          ),
      ),

    );
  }
}
