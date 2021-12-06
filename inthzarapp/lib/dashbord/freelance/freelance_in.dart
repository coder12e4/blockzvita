import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/freelance/plan_page.dart';
class add_freelance_inn extends StatefulWidget {
  @override
  _add_freelance_innState createState() => _add_freelance_innState();
}

class _add_freelance_innState extends State<add_freelance_inn> {

  String dropdownValue1="Lorem*";
  String opening="Open 24hr";
  String closing="10:00 am";

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
        title: Text("Freelance Details".toUpperCase(),style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
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
            Text("Freelance Details",style: TextStyle(fontSize: 13,color: HexColor("2D2D2D")),),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                padding: const EdgeInsets.all(0.0),
                child: TextField(
                  decoration: new InputDecoration(
                      alignLabelWithHint: false,
                      contentPadding: EdgeInsets.symmetric(vertical: 4),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Name of Freelance*',
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
              Text("Freelance Category*",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
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

              Text("Sub Category*",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              Row(children: [

                Expanded(child: Container(
                  // padding: EdgeInsets.only(top: 8),
                  height: 45, child: DropdownButton<String>(
                  value: dropdownValue1,
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

              SizedBox(height: 31,),

              SizedBox(height: 8,)
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
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

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
                              color:HexColor("D1D1D1"),
                            ))),
                    style: new TextStyle(color: Colors.black,fontSize: 15),
                  )),),SizedBox(width: 12,),Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0), child: TextField(
                decoration: new InputDecoration(
                    alignLabelWithHint: false,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'LinkdIn',
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
              )),)],),],),),

SizedBox(height: 60,),
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
