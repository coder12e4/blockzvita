import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

import '../dashbord/filter/filter.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  final input_controller_search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [

        ],
        leading: GestureDetector(

            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("HELP",style: TextStyle( letterSpacing: 0.5,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          color: Colors.black),),),

      body: SingleChildScrollView(
        child: Container(
        child: Column(children: [
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 9,right: 9,top: 0),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: TextField(
                            controller: input_controller_search,
                            decoration: new InputDecoration.collapsed(
                                hintStyle: TextStyle(fontSize: 12, letterSpacing: 0.5,
                                  fontWeight: FontWeight.w400, // light
                                  fontStyle: FontStyle.normal,
                                ),
                                hintText: 'Search '
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 0,top: 0),
                        height: 48,
                        width: 48,

                        child: Center(
                          child: Icon(
                            Icons.search,color: Colors.black54,size: 18,
                          ),
                        ),

                        decoration: BoxDecoration(
                            color:HexColor("EEEEEE"),
                            borderRadius: BorderRadius.all(Radius.circular(24))
                        ),
                      ),




                    ],
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 9,right: 9,top: 0),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("HELP HEADING 123",style: TextStyle(
                              fontSize: 13,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto'


                          ),),
                        ),
                      ),






                    ],
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 9,right: 9,top: 0),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("HELP HEADING 123",style: TextStyle(
                              fontSize: 13,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto'


                          ),),
                        ),
                      ),






                    ],
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 20),
                  margin: EdgeInsets.only(left: 9,right: 9,top: 0),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("HELP HEADING 123",style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Roboto'
                      ),),

                      SizedBox(height: 10,),

                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        textAlign: TextAlign.justify,style: TextStyle(
                        color: HexColor("7A7A7A"),
                          fontSize: 12,
height: 1.9,
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Roboto'


                      ),),

                      SizedBox(height: 10,),


                    ],
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 9,right: 9,top: 0),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("HELP HEADING 123",style: TextStyle(
                              fontSize: 13,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto'


                          ),),
                        ),
                      ),






                    ],
                  ),
                ),
              )

            ],
          ),





        ],),

    ),
      ),);
  }
}
