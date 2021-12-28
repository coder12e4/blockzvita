import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/constants/constants.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';
import 'package:inthzarapp/location/location_dummy.dart';
import 'freelance/freelance_listing.dart';
import 'navigation_drover/add_bussiness/bussines_page.dart';
import 'changepassword.dart';
import 'jobs/jobs.dart';
import '../profile/notifications.dart';

class landing extends StatefulWidget {

  @override
  _landingState createState() => _landingState();
}

class _landingState extends State<landing> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final input_controller_search = TextEditingController();
  ScrollController _scrollController = new ScrollController();
  List<Widget>home_data;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index+1;
    });
  }

  Widget list = new Container(
    height: 200,
    child: Expanded(
      child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int k) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "assets/1.png",
                                    height: 100,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  flex: 3,
                ),
              ],
            );
          }),
    ),
  );
  Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 160.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Image.asset("assets/bio.png")),
          Container(
              margin: EdgeInsets.all(4), child: Image.asset("assets/bio.png")),
          Container(
              margin: EdgeInsets.all(4), child: Image.asset("assets/bio.png")),
        ],
      ));
  Widget horizontalList2 = new Container(
     // margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 12,top: 8,bottom: 4,right: 4),
              child: Image.asset("assets/recfly.png")),
          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/recfly.png")),
          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/recfly.png")),
        ],
      ));

  Widget myAppBarIcon() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      width: 35,
      height: 35,
      child: Stack(
        children: [
          new IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("FFC464"),
                  border: Border.all(color: Colors.white, width: 0)),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    "1",
                    //   _counter.toString(),
                    style: TextStyle(fontSize: 10, color: Colors.black87),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{



        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

        return true;


      },

      child: Scaffold(
        key: _scaffoldKey,
/*
        drawer: Drawer(child: Container(
          color: Colors.white,
          child: Column(
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              Container(
                height: 163,
                color: HexColor("FFECCE"),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 76,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(76))),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Customer Name",
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto'

                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Welcome to Inthezar",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.normal,

                              color: HexColor("6F6F6F")),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 8, 10, 0),
                          child: Image.asset("assets/icon_home.png"),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'HOME',
                          style: TextStyle(fontSize: 14,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => add_bussiness()));
                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.add_box_outlined,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'ADD A BUSSINESS',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext) => quick_find()));
                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.zoom_in,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'QUIK FINDS',
                          style: TextStyle(fontSize: 14,

                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,


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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>help()));
                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.help_outline_outlined,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'HELP',
                          style: TextStyle(fontSize: 14,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
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
              GestureDetector(
               onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>about_us()));
               },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.local_phone_outlined,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'ABOUT US',
                          style: TextStyle(fontSize: 14,                          letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => profile()));
                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.brightness_5_outlined,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'PROFILE',
                          style: TextStyle(fontSize: 14,

                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,

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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => login()));

                },
                child: Container(
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.power_settings_new_rounded,
                            color: HexColor("DADADA"),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'LOGOUT',
                          style: TextStyle(fontSize: 14,                          letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
*/

/*
        drawer: FABBottomAppBar(
          centerItemText: '',
          color: Colors.grey,
          selectedColor: Colors.grey ,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _onItemTapped,
          items: [
            FABBottomAppBarItem(iconData: Icons.bookmark_border, text: 'CATOGORY'),
            FABBottomAppBarItem(iconData: Icons.search, text: 'SEARCH'),
            FABBottomAppBarItem(iconData: Icons.chat_bubble_outline, text: 'LEADS'),
            FABBottomAppBarItem(iconData: Icons.perm_identity_outlined, text: 'PROFILE'),
          ],
        ),
*/

        extendBody: true,
        //    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //   floatingActionButton: FloatingActionButton(
        //backgroundColor: HexColor(constants.colorprimary),
        ///   onPressed: () { },
        //  child: Image.asset("assets/fab.png"),
        //  elevation: 2.0,
        // ),
/*
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor(constants.colorprimary),
          leading: new IconButton(
              icon: new Image.asset(
                "assets/leading.png",
                height: 22,
                width: 22,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
          actions: [
            Padding(padding: EdgeInsets.only(right: 8), child: myAppBarIcon()),

            //Center(child: FaIcon(FontAwesomeIcons.calendarWeek,color: Colors.white,size: 26.0,))
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("INTHEZAR ",
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ),
*/
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 212,
                  decoration: BoxDecoration(
                      color: HexColor(constants.colorprimary),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14))),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, top: 12),
                                                child: Text(
                                                  "LOCATION",
                                                  style: TextStyle(
                                                      color: HexColor("656565"),
                                                      fontSize: 11,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.w400, // light
                                                    fontStyle: FontStyle.normal,


                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, top: 4),
                                                child: Text(
                                                    "2175 Market Street, San Francisco",
                                                    style: TextStyle(
                                                        color: HexColor("656565"),
                                                        fontSize: 11,
                                                      letterSpacing: 1,
                                                      fontWeight: FontWeight.w300, // light
                                                      fontStyle: FontStyle.normal,
                                                    ))),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(right: 10, top: 10),
                                        height: 24,
                                        width: 24,
                                        child: Center(
                                          child: Icon(
                                            Icons.gps_fixed,
                                            color: Colors.black54,
                                            size: 14,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: HexColor("EEEEEE"),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24))),
                                      ),
                                      Container(

                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>location_dummy()));
                                        },
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(right: 20, top: 10),
                                          height: 24,
                                          width: 24,
                                          padding: EdgeInsets.all(2),
                                          child: Center(
                                            child: Image.asset("outline_location.png",height: 18),
                                            // Icon(
                                            //   Icons.location_on,
                                            //   color: Colors.black54,
                                            //   size: 18,
                                            // ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: HexColor("EEEEEE"),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(24))),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Divider(
                                        thickness: 0.3,
                                        color: HexColor("C6C6C6"),
                                      ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 12, right: 12, top: 0),
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              border: Border.all(
                                                  color: HexColor("C6C6C6"),
                                                  width: 0.3)),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: TextField(
                                                    controller:
                                                        input_controller_search,
                                                    decoration: new InputDecoration
                                                            .collapsed(
                                                        hintStyle: TextStyle(
                                                          fontSize: 11,
                                                          letterSpacing: 0.5,
                                                          fontWeight: FontWeight.w300, // light
                                                          fontStyle: FontStyle.normal,
                                                        ),
                                                        hintText: 'Search in Your Locality'),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 10, top: 0),
                                                height: 24,
                                                width: 24,
                                                child: Center(
                                                  child: Icon(
                                                    Icons.search,
                                                    color: Colors.black54,
                                                    size: 18,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                    color: HexColor("EEEEEE"),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(24))),
                                              ),
                                              GestureDetector(
                                                onTap: (){

                                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 2,show_appbar: false,)));


                                                },
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 8, top: 0),
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.view_headline,
                                                      color: Colors.black54,
                                                      size: 18,
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: HexColor("EEEEEE"),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(24))),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 14,show_appbar: false,)));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 0, top: 0),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child:
                                      Image.asset("outline_work.png",height: 24,)
                                      // Icon(
                                      //   Icons.work,
                                      //   color: HexColor("626262"),
                                      //   size: 24,
                                      // ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 14),
                                    child: Text(
                                      "JOBS",
                                      style: TextStyle(
                                          fontSize: 11,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,


                                      ),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 13,show_appbar: false,)));

                                 },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 0, top: 0),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child: Image.asset("assets/2.png"),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(30))),
                                  ),
                                ),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 14),
                                    child: Text(
                                      "FREELANCERS",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,



                                      ),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 0, top: 0),
                                  height: 50,
                                  width: 50,
                                  child: Center(
                                    child: Icon(
                                      Icons.business,
                                      color: HexColor("626262"),
                                      size: 24,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30))),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 14),
                                    child: Text(
                                      "REAL ESTATE",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 0, top: 0),
                                  height: 50,
                                  width: 50,
                                  child: Center(
                                    child: Image.asset("assets/4.png"),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30))),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 14),
                                    child: Text(
                                      "PRE OWNED",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,



                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                horizontalList1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 4, right: 4, bottom: 4),
                        child: GestureDetector(
                          onTap: (){
                           //Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>catogory()));

                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 11,show_appbar: false,)));

                          //  setState(() {tabs_home(seleced_index: 3,);});

                           },
                          child: Card(
                            elevation: 8,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 90,
                                  child: Padding(
                                      padding: EdgeInsets.all(18),
                                      child: Image.asset("assets/all.png")),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(
                                      "ALL CATEGORY",
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300, // light
                                          fontStyle: FontStyle.normal,



                                          color: HexColor(
                                            "626262",
                                          )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                       //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => restourents()));


                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 12,show_appbar: false,)));

                          },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 4, top: 4, right: 4, bottom: 4),
                          child: Card(
                            elevation: 8,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                    height: 80,
                                    width: 90,
                                    child: Image.asset("assets/rstnd.png")),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(
                                      "RESTAURANT",
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300, // light
                                          fontStyle: FontStyle.normal,
                                          color: HexColor(
                                            "626262",
                                          )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 4, top: 4, right: 10, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/amb.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "AMBULANCE",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,
                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 4, right: 4, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/school.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "SCHOOL",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,
                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/travels.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "TRAVELS",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,
                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(


                      child: Container(
                        margin: EdgeInsets.only(
                            left: 4, top: 4, right: 10, bottom: 4),
                        child: GestureDetector(


                          onTap: (){
//                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>freelance_listing()));

                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 13,show_appbar: false,)));

                          },
                          child: Card(
                            elevation: 8,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 90,
                                  child: Image.asset("assets/us2.png"),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(
                                      "FREELANCERS",
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300, // light
                                          fontStyle: FontStyle.normal,
                                          color: HexColor(
                                            "626262",
                                          )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 4, right: 4, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/vell.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "VILLAS",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,
                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 4),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 14,show_appbar: false,)));
                          },
                          child: Card(
                            elevation: 8,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 90,
                                  child: Image.asset("assets/job.png"),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(
                                      "JOB",
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300, // light
                                          fontStyle: FontStyle.normal,
                                          color: HexColor(
                                            "626262",
                                          )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 26,show_appbar: false,)));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 4, top: 4, right: 10, bottom: 4),
                          child: Card(
                            elevation: 8,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 90,
                                  child: Image.asset("assets/hospitals.png"),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(
                                      "HOSPITALS",
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300, // light
                                          fontStyle: FontStyle.normal,
                                          color: HexColor(
                                            "626262",
                                          )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 4, right: 4, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/vell.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "VILLAS",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,



                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/job.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "JOB",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,

                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 4, top: 4, right: 10, bottom: 4),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 90,
                                child: Image.asset("assets/hypermart.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(
                                    "HYPERMART",
                                    style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.normal,

                                        color: HexColor(
                                          "626262",
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
                horizontalList2,
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
