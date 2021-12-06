import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/models/notification_model.dart';

import '../landing_tabs_home.dart';

class leads extends StatefulWidget {
  @override
  _leadsState createState() => _leadsState();
}

class _leadsState extends State<leads> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final input_controller_search = TextEditingController();

  List<quick_finds> k;
  int _value=1;
  void add() {
    k.add(new quick_finds("Electrician", "53"));
    k.add(new quick_finds("Railway", "44"));
    k.add(new quick_finds("police aid", "34"));
    k.add(new quick_finds("ambulance", "54"));
    k.add(new quick_finds("taxi", "90"));
    k.add(new quick_finds("blood bank", "46"));
    k.add(new quick_finds("Painter", "67"));
    k.add(new quick_finds("ksrtc", "88"));
    k.add(new quick_finds("tourism", "67"));
    k.add(new quick_finds("restourants", "73"));
    k.add(new quick_finds("Coleges", "45"));
    k.add(new quick_finds("banks", "65"));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    k = new List<quick_finds>();
    add();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return WillPopScope(

      child: Scaffold(
        key: _scaffoldKey,

        appBar: AppBar(
          titleSpacing: 0.0,
          actions: [],
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
              },
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: Text(
            "LEADS",
            style: TextStyle(color: Colors.black,
              fontSize: 16,
              letterSpacing: 1,
              fontWeight: FontWeight.w400, // light
              fontStyle: FontStyle.normal,

            ),
          ),
        ),


        body: Container(
          margin: EdgeInsets.only(left: 9, right: 9,bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                margin:EdgeInsets.only(left: 13, right: 13),
                width: double.infinity,
                height: 50,

                decoration: BoxDecoration(
                    border: Border.all(color: HexColor("B5B5B5"), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                padding: EdgeInsets.only(right: 13,left: 20),
                child: DropdownButton(
                    iconSize: 20,

                    isExpanded: true,

                    underline: SizedBox(),
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Business Name",

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
                            "Third ",
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


              Expanded(
                  child: new ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext ctxt, int Index) {
                        return GestureDetector(
                          onTap: () {},
                          child: new Container(
                            margin: EdgeInsets.only(left: 14, right: 14, top: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: HexColor("4B4B4B"), width: 0.4)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 14,
                                            right: 20,
                                            bottom: 9,
                                            left: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              "CUSTOMER NAME",
                                              style: TextStyle(
                                                  color: HexColor("202020"),
                                                  fontSize: 13,
                                                letterSpacing: 0.5,
                                                fontWeight: FontWeight.w400, // light
                                                fontStyle: FontStyle.normal,
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 20, bottom: 8),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Mail Id",
                                                style: TextStyle(
                                                    color: HexColor("242424"),
                                                    fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.w400, // light
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 20, bottom: 18),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "+91 8765323",
                                                style: TextStyle(
                                                    color: HexColor("242424"),
                                                    fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.w400, // light
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 20, bottom: 10),
                                        child: Text(
                                          "12-10-2020",
                                          style: TextStyle(
                                              color: HexColor("A1A1A1"),
                                              fontSize: 12,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w400, // light
                                            fontStyle: FontStyle.normal,


                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(right: 0, top: 0),
                                      height: 40,
                                      width: 40,
                                      child: Center(
                                        child: Icon(
                                          Icons.phone_in_talk,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: HexColor("FAA51A"),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24))),
                                    ),
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
      ),

      onWillPop: ()async{

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

        return true;

      },
    );
  }
}


