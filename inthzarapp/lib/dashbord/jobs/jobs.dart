import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

import '../filter/filter.dart';
import 'job_register.dart';
import 'jobs_lists.dart';
class jobs__ extends StatefulWidget {
  @override
  _jobs__State createState() => _jobs__State();
}

class _jobs__State extends State<jobs__> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final input_controller_search=TextEditingController();


  ScrollController _scrollController = new ScrollController();

  Widget list= new Container(
    height: 200,
    child: Expanded(child:

    new ListView.builder(
        scrollDirection: Axis.horizontal,

        shrinkWrap: true,
        itemCount:10,
        itemBuilder: (BuildContext context,int k){
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(0),
                  child:GestureDetector(
                    onTap:(){

                    },
                    child:
                    Center(
                      child: Column(
                        children: [
                          Container(

                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),

                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset("assets/1.png",height: 100,)),

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
        }),),);
  Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: new ListView(

        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/bio.png")),

          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/bio.png")),

          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/bio.png")),


        ],
      )
  );
  Widget horizontalList2 = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/recfly.png")),

          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/recfly.png")),

          Container(
              margin: EdgeInsets.all(4),
              child: Image.asset("assets/recfly.png")),


        ],
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey ,
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>filter()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10,top: 12,bottom: 12),
              height: 34,
              width: 34,

              child: Center(
                child: Icon(
                  Icons.settings_input_composite_outlined,color: Colors.black54,size: 18,
                ),
              ),

              decoration: BoxDecoration(
                  color:HexColor("EEEEEE"),
                  borderRadius: BorderRadius.all(Radius.circular(34))
              ),
            ),
          ),


        ],
        leading: GestureDetector(

            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("JOBS",style: TextStyle( letterSpacing: 1,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          fontSize: 16,
          color: Colors.black),),),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  ButtonTheme(
        minWidth: 100,
        height: 45,
        child: Container(
          margin: EdgeInsets.only(bottom: 95),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => job_register()));
            },
            color: HexColor("966636"),
            textColor: Colors.white,
            child: Text("POST A JOB",
                style: TextStyle(fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1
                )),
          ),
        ),
      ) ,


      body: SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(bottom: 100),
          child: Stack(children: [
            Container(height: 800,),
            Positioned(child: Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              color: Colors.white,
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
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/med.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'All Jobs',
                          style: TextStyle(fontSize: 14, letterSpacing: 0.5,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              color: HexColor("545353")),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>jobs_list()));

                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 21,show_appbar: false,)));

                  },
                  child: Container(
                    height:40,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: new Image.asset("assets/vec.png",),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Text(
                            'Accounts',
                            style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          flex: 8,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/bpo.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'BPO',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/bank.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Banks',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/call.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Call Center',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/drvr.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Driver',
                          style: TextStyle(fontSize: 14, letterSpacing: 0.5,
                              fontWeight: FontWeight.w400, // light
                              fontStyle: FontStyle.normal,
                              color: HexColor("545353")),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/finance.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Finance',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/hotel.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Hotel',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"), letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/it.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'IT',
                          style: TextStyle(fontSize: 14,color: HexColor("545353"),
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height:40,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: new Image.asset("assets/jvl.png",),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text(
                          'Jewel',
                          style: TextStyle(fontSize: 14,color: HexColor("545353")),
                        ),
                        flex: 8,
                      )
                    ],
                  ),
                ),
              ],),
            )),







          ],),
        ),
      ),);
  }
}
