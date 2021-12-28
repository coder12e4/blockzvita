
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/models/notification_model.dart';
class quick_find_inner extends StatefulWidget {
  @override
  _quick_find_innerState createState() => _quick_find_innerState();
}

class _quick_find_innerState extends State<quick_find_inner> {
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
    return Scaffold(
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
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("AMBULANCE",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1),),),

      body: Container(
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


            Expanded(child: new ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: (){

                        },
                        child: new Container(
                          margin: EdgeInsets.only(left: 14, right: 14, top: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: HexColor("4B4B4B"), width: 0.4)),
                          child:Row(children: [

                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 14,right: 20,bottom: 9,left: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                              "AMBULANCE 1",
                                              style: TextStyle(
                                                  color: HexColor("4B4B4B"),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,letterSpacing: .5),
                                            )),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,bottom: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("+91 8765323", style: TextStyle(
                                              color: HexColor("242424"),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,letterSpacing: .5),),
                                        ),


                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,bottom: 18),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("Location,area", style: TextStyle(
                                              color: HexColor("242424"),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,letterSpacing: .5),),
                                        ),


                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ), Container(
                              margin: EdgeInsets.only(right: 20,top: 0),
                              height: 35,
                              width: 35,

                              child: Center(
                                child: Icon(
                                  Icons.phone_in_talk,color: Colors.white,size: 20,
                                ),
                              ),

                              decoration: BoxDecoration(
                                  color:HexColor("FAA51A"),
                                  borderRadius: BorderRadius.all(Radius.circular(24))
                              ),
                            ),

                          ],),
                        ),
                      );
                    }))


          ],
        ),
      ),
    );
  }
}
