import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/freelance/plan_page.dart';

import 'add_product.dart';
class add_bussiness_ extends StatefulWidget {
  @override
  _add_bussiness_State createState() => _add_bussiness_State();
}

class _add_bussiness_State extends State<add_bussiness_> {

  String dropdownValue1="Lorem*";
  String dropdownValue5="Lorem";
  String dropdownValue2="Services";
  String opening="Open 24hr";
  String closing="10:00 am";
  String dropdownvalue3 = "Video Url";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black87,)),
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ADD BUSINESS",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 31,right: 31),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 19,),
            Text("Business Details",style: TextStyle(fontSize: 13,color: HexColor("2D2D2D")),),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                padding: const EdgeInsets.all(0.0),
                child: TextField(
                  decoration: new InputDecoration(
                      alignLabelWithHint: false,
                      contentPadding: EdgeInsets.symmetric(vertical: 4),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Name of Business / company*',
                      labelStyle: TextStyle(fontSize: 14,color: HexColor("595959")),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: new UnderlineInputBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                        borderSide: new BorderSide(
                          color:HexColor("D1D1D1"),
                        ),
                      ),
                      focusedBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                            color:HexColor("D1D1D1"),
                          ))),
                  style: new TextStyle(color: Colors.black,fontSize: 15),
                )),
              SizedBox(height: 18,),
              Text("Business Category*",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              Row(children: [

                Expanded(child: Container(
                 // padding: EdgeInsets.only(top: 8),
                  height: 45, child: DropdownButton<String>(
                  value: dropdownValue1,
                  isExpanded: true,

                  icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
                  iconSize: 24,
                  elevation: 16,

                  style: TextStyle(color: HexColor("000000"),fontSize: 13,),
                  underline: Container(
                    height: 1,
                    color:HexColor("D1D1D1"),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>['Lorem*', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


                    );
                  }).toList(),
                ),),),




              ],),
              SizedBox(height: 12,),

              Text("Sub Category",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              Row(children: [

                Expanded(child: Container(
                  // padding: EdgeInsets.only(top: 8),
                  height: 45, child: DropdownButton<String>(
                  value: dropdownValue5,
                  isExpanded: true,

                  icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
                  iconSize: 24,
                  elevation: 16,

                  style: TextStyle(color: HexColor("595959"),fontSize: 11,),
                  underline: Container(
                    height: 1,
                    color:HexColor("D1D1D1"),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue5 = newValue;
                    });
                  },
                  items: <String>['Lorem', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


                    );
                  }).toList(),
                ),),),




              ],),
              Row(children: [Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Tag',
                        labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color:HexColor("D1D1D1")
                          ),
                        ),


                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                            borderSide: new BorderSide(
                              color: HexColor("595959"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),)],),
              SizedBox(height: 18,),

              Text("Description [Min 100 Characters / Max 5000]",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              SizedBox(height: 18,),
              Row(children: [Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: '',
                        labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color:HexColor("D1D1D1")
                          ),
                        ),


                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                            borderSide: new BorderSide(
                              color: HexColor("595959"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),)],),
              SizedBox(height: 18,),
              Row(children: [

                Expanded(child: Container(
                  // padding: EdgeInsets.only(top: 8),
                  height: 45, child: DropdownButton<String>(
                  value: dropdownValue2,
                  isExpanded: true,

                  icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    child: Center(child: Icon(Icons.add,size: 11,),),
                      height: 24,
                    width: 24,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24)),border: Border.all(color: HexColor("A5A5A5"))),),
                  iconSize: 24,
                  elevation: 16,

                  style: TextStyle(color: HexColor("595959"),fontSize: 11,),
                  underline: Container(
                    height: 1,
                    color:HexColor("D1D1D1"),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>['Services', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


                    );
                  }).toList(),
                ),),),
              ],),
              SizedBox(height: 31,),
              Text("MARK YOUR BUSINESS ON GOOGLE MAP*",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              SizedBox(height: 8,),
              Container(width: double.infinity,child: ClipRect(child: Image.asset("assets/google_map.png", width: MediaQuery.of(context).size.width,fit: BoxFit.fitWidth,),),)
          ,SizedBox(height: 8,)
              ,Text("Photos*",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              SizedBox(height: 8,),
             
             
             
              Card(
                child: Container(height: 75,width: double.infinity,child:
                Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(Icons.add_photo_alternate,color: HexColor("DADADA"),),
                  SizedBox(height: 4,),
                  Text("Add Photos",style: TextStyle(fontSize: 11,color: HexColor("595959")),)
                ],),decoration: BoxDecoration(color: HexColor("ffffff"),borderRadius: BorderRadius.all(Radius.circular(8))),),
              )
          
              
              
              
              ,SizedBox(height: 8,),
          Row(children: [

                Expanded(child: Container(
                  // padding: EdgeInsets.only(top: 8),
                  height: 45, child: DropdownButton<String>(
                  value: dropdownvalue3,
                  isExpanded: true,

                  icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    child: Center(child: Icon(Icons.add,size: 11,),),
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24)),border: Border.all(color: HexColor("A5A5A5"))),),
                  iconSize: 24,
                  elevation: 16,

                  style: TextStyle(color: HexColor("595959"),fontSize: 11,),
                  underline: Container(
                    height: 1,
                    color:HexColor("D1D1D1"),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownvalue3 = newValue;
                    });
                  },
                  items: <String>['Video Url', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


                    );
                  }).toList(),
                ),),),
              ],),
              Row(children: [
                Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Website',
                        labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                            color:HexColor("D1D1D1"),
                          ),
                        ),


                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                            borderSide: new BorderSide(
                              color:HexColor("D1D1D1"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),),SizedBox(width: 12,),Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0), child: TextField(
                decoration: new InputDecoration(
                    alignLabelWithHint: false,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Facebook',
                    labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: new UnderlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                        color:HexColor("D1D1D1"),
                      ),
                    ),


                    focusedBorder: new UnderlineInputBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                        borderSide: new BorderSide(
                          color: HexColor("595959"),
                        ))),
                style: new TextStyle(color: Colors.black,fontSize: 15),
              )),)],),
              Row(children: [Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Youtube',
                        labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                            color:HexColor("D1D1D1"),
                          ),
                        ),


                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                            borderSide: new BorderSide(
                              color:HexColor("D1D1D1"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),),SizedBox(width: 12,),Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0), child: TextField(
                decoration: new InputDecoration(
                    alignLabelWithHint: false,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Instagram',
                    labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: new UnderlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                        color:HexColor("D1D1D1"),
                      ),
                    ),


                    focusedBorder: new UnderlineInputBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                        borderSide: new BorderSide(
                          color: HexColor("595959"),
                        ))),
                style: new TextStyle(color: Colors.black,fontSize: 15),
              )),)],),
              Row(children: [Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Linked In',
                        labelStyle: TextStyle(fontSize: 11,color: HexColor("595959")),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                            color:HexColor("D1D1D1"),
                          ),
                        ),


                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                            borderSide: new BorderSide(
                              color:HexColor("D1D1D1"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),),SizedBox(width: 12,),Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0), child:SizedBox()),)],),
              SizedBox(height: 45,),
              Text("Working Hours",style: TextStyle(fontSize: 13,color: HexColor("2D2D2D")),),
SizedBox(height: 18,),
      Row(children: [
  Expanded(child: Container(child: Column(

    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


    Text("Open",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
    Row(children: [

      Expanded(child: Container(
        // padding: EdgeInsets.only(top: 8),
        height: 45, child: DropdownButton<String>(
        value:opening,
        isExpanded: true,

        icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
        iconSize: 24,
        elevation: 16,

        style: TextStyle(color: HexColor("3C3C3C"),fontSize: 13,),
        underline: Container(
          height: 1,
          color:HexColor("D1D1D1"),
        ),
        onChanged: (String newValue) {
          setState(() {
            opening = newValue;
          });
        },
        items: <String>['Open 24hr', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


          );
        }).toList(),
      ),),),
    ],),



  ],),)),SizedBox(width: 20,)
  ,Expanded(child: Container(child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [

    Text("Closing",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
    Row(children: [

      Expanded(child: Container(
        // padding: EdgeInsets.only(top: 8),
        height: 45, child: DropdownButton<String>(
        value: closing,
        isExpanded: true,

        icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
        iconSize: 24,
        elevation: 16,

        style: TextStyle(color: HexColor("3C3C3C"),fontSize: 13,),
        underline: Container(
          height: 1,
          color:HexColor("D1D1D1"),
        ),
        onChanged: (String newValue) {
          setState(() {
            closing = newValue;
          });
        },
        items: <String>['10:00 am', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),
          );
        }).toList(),
      ),),),

    ],),


  ],),))

],),
  Container(
                margin: EdgeInsets.only(top: 20,bottom: 20),
                width: double.infinity,child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("MON",style: TextStyle(fontSize: 10),),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("TUE",style: TextStyle(fontSize: 10),),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("WED",style: TextStyle(fontSize: 10)),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("THU",style: TextStyle(fontSize: 10)),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("FRI",style: TextStyle(fontSize: 10)),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("SAT",style: TextStyle(fontSize: 10)),),),
                  Container(height: 41,width: 41,decoration: BoxDecoration(color: HexColor("E2E2E2"),borderRadius: BorderRadius.all(Radius.circular(41))),child: Center(child: Text("SUN",style: TextStyle(fontSize: 10)),),),
                ],),),
  Row(children: [
                Expanded(child: Container(height: 26,decoration: BoxDecoration(color: HexColor("FAA51A"),borderRadius: BorderRadius.all(Radius.circular(60))),child: Center(child: Text("APPLY TO ALL",style: TextStyle(fontSize: 12),),),)),
               SizedBox(width: 8,),
                Expanded(child: Container(height: 26,decoration: BoxDecoration(color: HexColor("FFDDA6"),borderRadius: BorderRadius.all(Radius.circular(60))),child: Center(child: Text("MON TO FRI",style: TextStyle(fontSize: 12)),),)),
                SizedBox(width: 8,),
                Expanded(child: Container(height: 26,decoration: BoxDecoration(color: HexColor("FFDDA6"),borderRadius: BorderRadius.all(Radius.circular(60))),child: Center(child: Text("MON TO SAT",style: TextStyle(fontSize: 12)),),)),],),
              SizedBox(height: 18,),
              Container(width: double.infinity,child: Row(children: [
  Text("Products",style: TextStyle(color: HexColor("282828"),fontSize: 13),),Expanded(child: SizedBox()),
  Container(width: 103,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),border: Border.all(color: HexColor("998068"))),child: Center(child: Text("Add Products",style: TextStyle(fontSize: 10),),),)
],),),
              SizedBox(height: 18,),

Container(width: double.infinity,child: Row(children: [

  Expanded(child: Column(

    mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(child: Stack(children: [
      Container(child: Image.asset("assets/hotel_sharp.png"),),
      Positioned(child: Container(decoration: BoxDecoration(color: HexColor("321F00"),borderRadius: BorderRadius.all(Radius.circular(30))),height: 24,width: 24,child: Icon(Icons.delete_outline,size: 11,color: HexColor("DADADA"),),),top: 10,right: 10,),
      Positioned(child: GestureDetector(
          onTap: (){


            Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=> add_products()));


          },

          child: Container(decoration: BoxDecoration(color: HexColor("321F00"),borderRadius: BorderRadius.all(Radius.circular(30))),height: 24,width: 24,child: Icon(Icons.create,size: 11,color: HexColor("DADADA"),),)),top: 10,right: 40,),
    ],),),
SizedBox(height: 10,),
    Text("Name Of Product",style: TextStyle(fontSize: 14,color: HexColor("000000")),),
    SizedBox(height: 4,),
    Text("Discription of Product",style: TextStyle(fontSize: 11,color: HexColor("565656"))),
    SizedBox(height: 4,),
    Text("\u20B9 1000",style: TextStyle(fontSize: 14,color: HexColor("000000"))),

  ],



)),SizedBox(width: 4,),Expanded(child: Column(

    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(child: Stack(children: [
        Container(child: Image.asset("assets/hotel_sharp_two.png"),),
        Positioned(child: Container(decoration: BoxDecoration(color: HexColor("321F00"),borderRadius: BorderRadius.all(Radius.circular(30))),height: 24,width: 24,child: Icon(Icons.delete_outline,size: 11,color: HexColor("DADADA"),),),top: 10,right: 10,),


        Positioned(child: GestureDetector(
            onTap: (){


              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=> add_products()));


            },

            child: Container(decoration: BoxDecoration(color: HexColor("321F00"),borderRadius: BorderRadius.all(Radius.circular(30))),height: 24,width: 24,child: Icon(Icons.create,size: 11,color: HexColor("DADADA"),),)),top: 10,right: 40,),

      ],),),
      SizedBox(height: 10,),
      Text("Name Of Product",style: TextStyle(fontSize: 14,color: HexColor("000000")),),
      SizedBox(height: 4,),
      Text("Discription of Product",style: TextStyle(fontSize: 11,color: HexColor("565656"))),
      SizedBox(height: 4,),
      Text("\u20B9 1000",style: TextStyle(fontSize: 14,color: HexColor("000000"))),
    ],

  )),],),)
            ],),),

            SizedBox(height: 20,),
            ButtonTheme(minWidth: double.infinity,height: 63,child: RaisedButton(
              color: HexColor("966636"),
              child: Text("CONTINUE",style: TextStyle(color: Colors.white),),

              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>plan_page()));
              },
            ),)

        ],),),
      ),

    );
  }
}
