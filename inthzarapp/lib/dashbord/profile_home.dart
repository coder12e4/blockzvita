import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';
import 'package:inthzarapp/profile/profile_deit.dart';
import 'change_password.dart';
import 'changepassword.dart';
import '../profile/notifications.dart';
import 'my_business/my_business.dart';
//import 'mylisting.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // You can do some work here.
        // Returning true allows the pop to happen, returning false prevents it.
       Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

        return true;
      },

      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 56,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
                          },
                          child: new Icon(Icons.keyboard_backspace,
                              size: 24, color: Colors.black),
                        ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'PROFILE',
                        style: TextStyle(

                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.5


                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
              Container(
                height: 139,
                color: HexColor("F1F0EF"),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 10,bottom: 20,top: 10),
                        child: Stack(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(45.0)
                              ),
                              child: Column(
                                children: <Widget>[
                                Image.asset(
                                  "assets/img.png",height: 44,
                                ),
                                  Image.asset(
                                    "assets/semi.png",height: 20,width: 60,fit: BoxFit.fill,
                                  ),
                                  // Card(
                                  //   color: Colors.white,
                                  //   shadowColor: Colors.transparent,
                                  //   child:Container(
                                  //     height: 6,
                                  //     width: 25,
                                  //     decoration: BoxDecoration(
                                  //         color: Colors.transparent,
                                  //         image: DecorationImage(
                                  //             image: AssetImage('assets/semi.png',)
                                  //         )
                                  //
                                  //     ),
                                  //   ) ,
                                  // ),
                                ],
                              ),


                              // ClipRRect(
                              //       borderRadius: BorderRadius.circular(80),
                              //       child: Container(
                              //         height: 550,
                              //         child: Column(
                              //           children: [
                              //             Image.asset(
                              //                 "assets/img.png",height: 50,
                              //             ),
                              //             Text("1")
                              //           ],
                              //         ),
                              //       ),
                              //     ),
                                  // Positioned(
                                  //     bottom: 0,
                                  //     child: Container(
                                  //       margin: EdgeInsets.only(left: 6,right: 6,bottom: 6,top:10),
                                  //       width: 0,
                                  //   height: 20,
                                  // decoration: BoxDecoration(
                                  //   color: HexColor("504D4D"),
                                  //   borderRadius:
                                  //   BorderRadius.only(bottomLeft: Radius.circular(70),
                                  //       bottomRight:Radius.circular(70))
                                  // ),
                                  //
                                  // ))
                                  //


                            ),

                            Positioned(
                              top: 44,
                              right: 1,
                              left:10,
                              child: Icon(Icons.add_a_photo,size: 10,color: Colors.white,),
                            ),

                             // Positioned(
                             //   top: 38,
                             //   right: 2,
                             //   left: 2,
                             //   child: Card(
                             //     color: Colors.white,
                             //     shadowColor: Colors.transparent,
                             //     child:Container(
                             //       height: 26,
                             //      width: 100,
                             //      decoration: BoxDecoration(
                             //        color: Colors.transparent,
                             //       image: DecorationImage(
                             //         image: AssetImage('assets/semi.png',)
                             //       )
                             //
                             //      ),
                             //     ) ,
                             //   ),
                               //Image.asset("assets/semi.png",height: 26,width:100,color: HexColor("504D4D"),),
                               // Container(
                               //   height: 25,
                               //   width: 43,
                               //   decoration: BoxDecoration(
                               //     color: HexColor("504D4D"),
                               //     borderRadius: BorderRadius.circular(1.0)
                               //   ),
                               //   child: Column(
                               //     children: [
                               //
                               //
                               //     ],
                               //   ),
                               // ),

                          ],
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                            color: Colors.black


                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "+91234567890",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                              color: Colors.black

                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>profile_edit()));
                        },
                        child: Container(
                          height: 30,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                  child: new Icon(Icons.person_outline,
                                      size: 24, color: Colors.black),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Profile Edit',
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black
                                  ),
                                ),
                                flex: 8,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                    child: new Icon(Icons.bookmark_border,
                                        size: 24, color: Colors.black),
                                  ),
                                  flex: 2),
                              Expanded(
                                child: Text(
                                  'My Listing',
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black


                                  ),
                                ),
                                flex: 8,
                              ),
                            ],
                          ),
                          onTap: () {


                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 15,show_appbar: false,)));

                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                  child: Icon(Icons.star_border,
                                      size: 24, color: Colors.black),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Favorites',
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black
                                  ),
                                ),
                                flex: 8,
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 16,show_appbar: false,)));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Icon(Icons.history,
                                      size: 24, color: Colors.black),
                                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Transactions',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black



                                  ),
                                ),
                                flex: 8,
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 17,show_appbar: false,)));

                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Icon(Icons.notifications_none,
                                      size: 24, color: Colors.black),
                                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black

                                  ),
                                ),
                                flex: 8,
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 18,show_appbar: false,)));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Icon(Icons.lock_outline,
                                      size: 24, color: Colors.black),
                                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  'Change Password',
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.5,
                                      color: Colors.black

                                  ),
                                ),
                                flex: 8,
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => c_password()),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                flex: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
