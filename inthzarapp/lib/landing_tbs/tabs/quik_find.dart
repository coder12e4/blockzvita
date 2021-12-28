import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/tabs/quick_find_inner_page.dart';
import 'package:inthzarapp/models/notification_model.dart';

import '../landing_tabs_home.dart';
class quick_find extends StatefulWidget {
  @override
  _quick_findState createState() => _quick_findState();
}

class _quick_findState extends State<quick_find> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final input_controller_search=TextEditingController();
List<quick_finds>k;

void add(){
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
    k=new List<quick_finds>();
    
    add();
    
    
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return WillPopScope(

      onWillPop: ()async{

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

        return true;


      },

      child: Scaffold(
        key: _scaffoldKey ,
        appBar: AppBar(
          titleSpacing: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10,top: 9,bottom: 9),
              height: 40,
              width: 40,

              child: Center(
                child: Icon(
                  Icons.settings_input_composite,color: Colors.black54,size: 18,
                ),
              ),

              decoration: BoxDecoration(
                  color:HexColor("EEEEEE"),
                  borderRadius: BorderRadius.all(Radius.circular(24))
              ),
            ),


          ],
          leading: GestureDetector(

              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
              },
              child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("QUICK FIND",
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400, // light
              fontStyle: FontStyle.normal,
              letterSpacing: .5),),),

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 19,right: 19),
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
                                      hintStyle: TextStyle(fontSize: 12),
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

                    child: Text("",style: TextStyle(color: Colors.black,fontSize: 15),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>quick_find_inner()));
                        },
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          child: Container(
                            height: 80,
                            width: 90,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                    child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                    child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

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
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

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
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Container(
                          height: 80,
                          width: 90,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 4),
                                  child: Text(k[0].item_name.toUpperCase(),style: TextStyle(fontSize: 13,color: HexColor("4B4B4B",)),)),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(2, 2, 0, 12),
                                  child: Text(k[0].item_no.toUpperCase(),style: TextStyle(fontSize: 12,color: HexColor("828282",)),))

                            ],
                          ),
                        ),
                      ),
                      flex: 3,

                    ),

                  ],
                ),








              ],
            ),
          ),
        ),
      ),
    );
  }
}
