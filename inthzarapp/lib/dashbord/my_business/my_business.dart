import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/freelance/plan_page.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/bussines_page.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

//import 'inner_bussiness_page.dart';
import 'my_business_inn.dart';
class my_listings extends StatefulWidget {
  //this is my bussines
  @override
  _my_listingsState createState() => _my_listingsState();
}

class _my_listingsState extends State<my_listings> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "MY BUSSINESS",
          style: TextStyle(color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400, // light
              fontStyle: FontStyle.normal,
              letterSpacing: 1

          ),
        ),
        actions: [

          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>add_bussiness()));
            },
            child: Container(
                margin: EdgeInsets.only(top: 20,right: 20),
                child: Text("ADD NEW",style:TextStyle(letterSpacing: 1,fontSize: 12,fontWeight: FontWeight.w400,color: HexColor("000000")),)),
          )
        ],
      ),
      body: Container(
        child: Column(children: [

          new Expanded(
              child: new ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return GestureDetector(
                      onTap: (){
                        //     Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>transactions()));
                      },
                      child: new Container(
                        margin: EdgeInsets.only(left: 14, right: 14, top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: HexColor("4B4B4B"), width: 0.4)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.asset("assets/demo_hotell.png",width: 100,height: 75,fit: BoxFit.cover,)),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Column(
                                    mainAxisAlignment:MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text("Shop Name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,letterSpacing: 1,color: HexColor("1A1A1A")),),
                                    SizedBox(height: 8,),
                                    Text("Location, Area",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 1,color: HexColor("616161"))),
                                      Row(children: [
                                      Text("Free",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 1,color: HexColor("616161"))),
                                      SizedBox(width: 4,),
                                      ButtonTheme(

                                        minWidth:55,
                                        height: 20,

                                        child: RaisedButton(

                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.0),

                                          ),
                                          onPressed: () {

                                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) =>plan_page()));

                                            },
                                          color: HexColor("FCD698"),
                                          textColor: Colors.white,
                                          elevation: 0,
                                          child: Text("upgrade".toUpperCase(),
                                              style: TextStyle(
                                                  color: HexColor("2D2D2D"),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400, // light
                                                  fontStyle: FontStyle.normal,
                                                  letterSpacing: 1
                                              )),
                                        ),
                                      )
                                    ],),

                                  ],),),



                                ],
                              ),),


                           Container(margin: EdgeInsets.only(left: 10,right: 10),child: Divider(height: 1,thickness: 1,color: HexColor("CACACA"),)),

                            Container(
                              height: 34,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                      onTap: (){


                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 27,show_appbar: false,)));

                                      },
                                      child: Text("Edit",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 1,color: HexColor("1A1A1A")),)),

                                  SizedBox(width: 1,height: 20,child: Container(color: HexColor("CACACA"),),),


                                  GestureDetector(
                                      onTap: (){

                                      },
                                      child: Text("Delete",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 1,color: HexColor("1A1A1A")),)),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    );
                  }))




        ],),
      ),
    );
  }
}
