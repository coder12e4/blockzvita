import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/filter/filter.dart';
import 'package:inthzarapp/dashbord/restorents/rest_in.dart';
import 'package:inthzarapp/dashbord/restorents/rest_products.dart';
import 'package:inthzarapp/dashbord/restorents/rest_videos.dart';
import 'dart:ui';
import '../../main.dart';
import 'images_rest_in.dart';

class restourents extends StatelessWidget {
  final input_controller_search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(170.0), // here the desired height
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("FAA51A"),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  AppBar(
                    elevation: 0,
                    titleSpacing: 0.0,
                    actions: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>filter()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, top: 12, bottom: 12),
                          height: 34,
                          width: 34,
                          child: Center(
                            child: Icon(
                              Icons.settings_input_composite,
                              color: Colors.black54,
                              size: 18,
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: HexColor("EEEEEE"),
                              borderRadius:
                              BorderRadius.all(Radius.circular(34))),
                        ),
                      ),
                    ],
                    leading: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.black,
                        )),
                    backgroundColor: HexColor("FAA51A"),
                    title: Text(
                      "RESTAURANTS",
                      style: TextStyle(color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,
                        fontSize: 16


                      ),
                    ),
                    // bottom:
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 9, right: 9, top: 0),
                            height: 48,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(25)),
                                border: Border.all(
                                    color: HexColor("C6C6C6"), width: 0.3)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: TextField(
                                      controller: input_controller_search,
                                      decoration: new InputDecoration.collapsed(
                                          hintStyle: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w400, // light
                                            fontStyle: FontStyle.normal,
                                            color: Colors.grey

                                          ),
                                          hintText: 'Search Restaurants'),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0, top: 0),
                                  height: 48,
                                  width: 48,
                                  child: Center(
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black54,
                                      size: 18,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: HexColor("EEEEEE"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24))),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: TabBar(

                      labelStyle: TextStyle(

                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          color: HexColor("545353")



                      ),
                      isScrollable: true,
                      labelColor: HexColor("000000"),
                      unselectedLabelColor: HexColor("3D3C3C"),
                      indicatorWeight: .001,
                      tabs: [
                        Tab(
                          text: "Search",
                        ),
                        Tab(
                          text: "Images",
                        ),
                        Tab(
                          text: "Videos",
                        ),
                        Tab(
                          text: "Products",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Search_res(),
              images_rest_in(),
              rest_videos(),
              rest_products()
            ],
          ),
        ),
      ),
    );
  }
}

class tabs extends StatefulWidget {
  @override
  _tabsState createState() => _tabsState();
}





class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}

class Search_res extends StatefulWidget {
  @override
  _Search_resState createState() => _Search_resState();
}

class _Search_resState extends State<Search_res> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 70),
        child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 4,),
                Text(
                  "Filter",
                  style: TextStyle(fontSize: 13,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      color: HexColor("5E5E5E")),
                ),
                SizedBox(width: 14,),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("B5B5B5"), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.all(4.0),
                  child: DropdownButton(

                    isExpanded: true,
                      iconSize: 14,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "  Popular",

                            style: TextStyle(

                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "  Second",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "  Third ",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 3),
                        DropdownMenuItem(
                            child: Text(
                              "  Fourth",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
                SizedBox(width: 12,),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("B5B5B5"), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.all(4.0),
                  child: DropdownButton(
                    isExpanded: true,
                      iconSize: 14,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "  Rated",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "  Second",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "  Third",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 3),
                        DropdownMenuItem(
                            child: Text(
                              "  Fourth",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
                SizedBox(width: 12,),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("B5B5B5"), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.all(4.0),
                  child: DropdownButton(
                      iconSize: 14,
                      isExpanded: true,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Distance",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Second",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "Third",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 3),
                        DropdownMenuItem(
                            child: Text(
                              "Fourth",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),

              ],
            ),
          ),

          new Expanded(
              child: new ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>rest_in()));
                      },
                      child: new Container(
                        margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 19,top: 19,bottom: 0),
                                  child: Text("Restaurants",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 15,
                                        color: HexColor("333333"),
                                      )),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(19),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/demo_hotell.png",
                                        height: 88,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      height: 88,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Restaurants",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              color: HexColor("1A1A1A")),),
                                          SizedBox(height: 3,),
                                          Text("Lorem discription",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 11,
                                              color: HexColor("A5A5A5"))),
                                          SizedBox(height: 3,),
                                          Row(children: [Text("Location",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,


                                              fontSize: 11,color: HexColor("A5A5A5"))),

                                            SizedBox(width: 8,),

                                            Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          SizedBox(height: 3,),
                                          Row(children: [

                                            Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 11,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),

                                            Text("20 Review",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 11,color: HexColor("A5A5A5")))],),

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("D7D7D7"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.call_outlined,size: 17,color: HexColor("6A6A6A")),
                                          //Image.asset("outline_call.png",height: 17,color: HexColor("DADADA")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("CALL NOW",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,

                                                  color: HexColor("000000"))))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("C2C2C2"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined,size: 17,color: HexColor("6A6A6A"),),
                                          //Image.asset("outline_location.png",height: 17,color: HexColor("6A6A6A")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("GET DIRECTION",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,


                                                  color: HexColor("000000")),))
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Divider(height: 3,thickness: 3,color: Colors.grey[300],),

                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(19),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/demo_hotell.png",
                                        height: 88,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      height: 88,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Restaurants",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              color: HexColor("1A1A1A")),),
                                          SizedBox(height: 3,),
                                          Text("Lorem discription",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 11,
                                              color: HexColor("A5A5A5"))),
                                          SizedBox(height: 3,),
                                          Row(children: [Text("Location",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,


                                              fontSize: 11,color: HexColor("A5A5A5"))),

                                            SizedBox(width: 8,),

                                            Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          SizedBox(height: 3,),
                                          Row(children: [

                                            Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 11,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),

                                            Text("20 Review",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 11,color: HexColor("A5A5A5")))],),

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("D7D7D7"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.call_outlined,size: 17,color: HexColor("6A6A6A")),
                                          //Image.asset("outline_call.png",height: 17,color: HexColor("DADADA")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("CALL NOW",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,

                                                  color: HexColor("000000"))))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("C2C2C2"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined,size: 17,color: HexColor("6A6A6A"),),
                                          //Image.asset("outline_location.png",height: 17,color: HexColor("6A6A6A")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("GET DIRECTION",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,


                                                  color: HexColor("000000")),))
                                        ],
                                      ),
                                    )),
                              ],
                            ),


                            Divider(height: 3,thickness: 3,color: Colors.grey[300],),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(19),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/demo_hotell.png",
                                        height: 88,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      height: 88,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Restaurants",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              color: HexColor("1A1A1A")),),
                                          SizedBox(height: 3,),
                                          Text("Lorem discription",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 11,
                                              color: HexColor("A5A5A5"))),
                                          SizedBox(height: 3,),
                                          Row(children: [Text("Location",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,


                                              fontSize: 11,color: HexColor("A5A5A5"))),

                                            SizedBox(width: 8,),

                                            Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          SizedBox(height: 3,),
                                          Row(children: [

                                            Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 11,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),

                                            Text("20 Review",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 11,color: HexColor("A5A5A5")))],),

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("D7D7D7"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.call_outlined,size: 17,color: HexColor("6A6A6A")),
                                          //Image.asset("outline_call.png",height: 17,color: HexColor("DADADA")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("CALL NOW",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,

                                                  color: HexColor("000000"))))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("C2C2C2"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined,size: 17,color: HexColor("6A6A6A"),),
                                          //Image.asset("outline_location.png",height: 17,color: HexColor("6A6A6A")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("GET DIRECTION",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,


                                                  color: HexColor("000000")),))
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Divider(height: 3,thickness: 3,color: Colors.grey[300],),
                            Container(
                              color: HexColor("FAA51A"),
                              padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                              child: Row(children: [Text("Search by",style: TextStyle(fontSize: 15,color: HexColor("333333")),)],),),
                            Container(
                              color: HexColor("FAA51A"),
                              height: 70,width: double.infinity,
                              child:new ListView.builder(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext ctxt, int Index) {
                                    return GestureDetector(
                                      onTap: (){
                                      },

                                      child: new Container(

                                        height: 70,
                                        width: 70,
                                        margin: EdgeInsets.only(left: 4, right: 4, top: 4,bottom: 10),
                                        decoration: BoxDecoration(
                                            color: HexColor("ffffff"),
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: HexColor("ffffff"), width: 0.4)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 0,right: 0,bottom: 0,left: 0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Image.asset("assets/med.png"),
                                              Padding(
                                                  padding: EdgeInsets.only(top: 4),
                                                  child: Text("Medical",style: TextStyle(fontSize: 11),))

                                              ,
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(19),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/demo_hotell.png",
                                        height: 88,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      height: 88,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Restaurants",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              color: HexColor("1A1A1A")),),
                                          SizedBox(height: 3,),
                                          Text("Lorem discription",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                              fontSize: 11,
                                              color: HexColor("A5A5A5"))),
                                          SizedBox(height: 3,),
                                          Row(children: [Text("Location",style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,


                                              fontSize: 11,color: HexColor("A5A5A5"))),

                                            SizedBox(width: 8,),

                                            Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          SizedBox(height: 3,),
                                          Row(children: [

                                            Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 11,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),

                                            Text("20 Review",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 11,color: HexColor("A5A5A5")))],),

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("D7D7D7"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.call_outlined,size: 17,color: HexColor("6A6A6A")),
                                          //Image.asset("outline_call.png",height: 17,color: HexColor("DADADA")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("CALL NOW",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,

                                                  color: HexColor("000000"))))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("C2C2C2"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined,size: 17,color: HexColor("6A6A6A"),),
                                          //Image.asset("outline_location.png",height: 17,color: HexColor("6A6A6A")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("GET DIRECTION",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,


                                                  color: HexColor("000000")),))
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Divider(height: 3,thickness: 3,color: Colors.grey[300],),

                            Row(children: [
                              Expanded(child: SizedBox()),Container(
                                margin: EdgeInsets.only(top: 30,left: 20,bottom: 30,right: 20),
                                width: 34,height: 34,decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(34)
                                  ,color: HexColor("A5A5A5")
                              ),child: Center(child: Icon(Icons.keyboard_arrow_up,color: Colors.white,),),)

                            ],)
                          ],
                        ),
                      ),
                    );
                  })),



/*
            new Expanded(
                child: new ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: () {},
                        child: new Container(
                          margin: EdgeInsets.only(left: 0, right: 0, top: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 19,top: 19,bottom: 0),
                                    child: Text("Restaurents",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: HexColor("333333"),
                                        )),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(19),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          "assets/demo_hotell.png",
                                          height: 88,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        height: 88,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Restaurents",style: TextStyle(fontSize: 15,color: HexColor("1A1A1A")),),
                                            SizedBox(height: 3,),
                                            Text("Lorem discription",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            SizedBox(height: 3,),
                                            Row(children: [Text("Location",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),
                                            SizedBox(height: 3,),
                                            Row(children: [Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                              RatingBar.builder(
                                                initialRating: 3,
                                                itemSize: 11,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                                itemBuilder: (context, _) => Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),

                                              Text("20 ratings",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                            border: Border.all(
                                                color: HexColor("4B4B4B"),
                                                width: 0.4)),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone_outlined,size: 17,color: HexColor("DADADA")),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4),
                                                child: Text("CALL NOW",style: TextStyle(fontSize: 12,color: HexColor("000000"))))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                            border: Border.all(
                                                color: HexColor("4B4B4B"),
                                                width: 0.4)),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.location_on_outlined,size: 17,color: HexColor("DADADA"),),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4),
                                                child: Text("GET LOCATION",style: TextStyle(fontSize: 12,color: HexColor("000000")),))
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(19),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          "assets/demo_hotel.png",
                                          height: 88,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        height: 88,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Restaurents",style: TextStyle(fontSize: 15,color: HexColor("1A1A1A")),),
                                            SizedBox(height: 3,),
                                            Text("Lorem discription",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                            SizedBox(height: 3,),
                                            Row(children: [Text("Location",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),Text("05 KM",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),
                                            SizedBox(height: 3,),
                                            Row(children: [Text("5",style: TextStyle(fontSize: 11,color: HexColor("A5A5A5"))),
                                              RatingBar.builder(
                                                initialRating: 3,
                                                itemSize: 11,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                                itemBuilder: (context, _) => Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),

                                              Text("20 ratings",style: TextStyle(fontSize: 11,color: HexColor("444444")))],),

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                            border: Border.all(
                                                color: HexColor("4B4B4B"),
                                                width: 0.4)),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone_outlined,size: 17,color: HexColor("DADADA")),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4),
                                                child: Text("CALL NOW",style: TextStyle(fontSize: 12,color: HexColor("000000"))))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                            border: Border.all(
                                                color: HexColor("4B4B4B"),
                                                width: 0.4)),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.location_on_outlined,size: 17,color: HexColor("DADADA"),),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4),
                                                child: Text("GET LOCATION",style: TextStyle(fontSize: 12,color: HexColor("000000")),))
                                          ],
                                        ),
                                      )),
                                ],
                              ),

                            ],
                          ),
                        ),
                      );
                    })),
*/

        ],
      ),
    ),
    );
  }
}
