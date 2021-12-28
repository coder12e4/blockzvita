import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/filter/filter.dart';

import '../landing_tabs_home.dart';
class catogory extends StatefulWidget {
  @override
  _catogoryState createState() => _catogoryState();
}

class _catogoryState extends State<catogory> {
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
    return WillPopScope(child: Scaffold(
      key: _scaffoldKey ,
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>filter()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10,top: 9,bottom: 9),
              height: 40,
              width: 40,

              child: Center(
                child: Icon(
                  Icons.settings_input_composite_outlined,color: Colors.black54,size: 18,
                ),
              ),

              decoration: BoxDecoration(
                  color:HexColor("EEEEEE"),
                  borderRadius: BorderRadius.all(Radius.circular(24))
              ),
            ),
          ),


        ],
        leading: GestureDetector(

            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("CATEGORIES",


        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1,
          fontSize: 16,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,


        ),),),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 9,right: 9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                    hintStyle: TextStyle(fontSize: 12,
                                      letterSpacing: 1,
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
              Container(
                  margin: EdgeInsets.only(top: 26,bottom: 14,left: 14),
                  child: Text("Categories",style: TextStyle(color: Colors.black,fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,

                  ),)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/amb.png"),

                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("AMBULANCE",

                                  style: TextStyle(fontSize: 11,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w400, // light
                                      fontStyle: FontStyle.normal,
                                      color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width:80,
                              child: Image.asset("assets/rstnd.png"),

                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("RESTAURANT",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                    color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 10,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/hypermart.png"),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("HYPERMART",style: TextStyle(fontSize: 11,

                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,color: HexColor("626262",)),))
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
                      margin: EdgeInsets.only(left: 10,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/school.png"),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("SCHOOL",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/travels.png"),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("TRAVELS",style: TextStyle(fontSize: 11,

                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 10,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/us2.png"),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("FREELANCERS",style: TextStyle(fontSize: 11,

                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,

                                    color: HexColor("626262",)),))

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
                      margin: EdgeInsets.only(left: 10,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/vell.png"),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("VILLAS",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                    color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/job.png"),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("JOB",style: TextStyle(fontSize: 11,

                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                    color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 10,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/hospitals.png"),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("HOSPITALS",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                    color: HexColor("626262",)),))

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
                      margin: EdgeInsets.only(left: 10,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/vell.png",height: 60,
                                width: 60,),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("VILLAS",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                    color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/job.png",



                              ),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("JOB",style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal
                                    ,color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,top: 4,right: 4,bottom: 4),
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,

                              child: Image.asset("assets/furniture.png"
                              ,height: 60,
                                width: 60,
                              ),


                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                child: Text("Furniture".toUpperCase(),style: TextStyle(fontSize: 11,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal
                                    ,color: HexColor("626262",)),))

                          ],
                        ),
                      ),
                    ),
                    flex: 3,

                  ),

                ],
              ),

              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    ), onWillPop:()async{


      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

      return true;




    });
  }
}
