import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'dart:ui';


import 'job_in.dart';

//import 'freelance_in.dart';

class job_register extends StatefulWidget {
  job_register({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _job_registerState createState() => _job_registerState();
}

class _job_registerState extends State<job_register> {
  String dropdownValue2 = 'State*';
String dropdownValue1="District*";
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

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
        title: Text("ADD NEW JOB".toUpperCase(),style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          letterSpacing: 1

        ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(height: 18,),
              Text(" List your Job ",style: TextStyle(fontSize: 20,color: HexColor("C97F08")),),
              SizedBox(height: 7,),
              Text("Indias local search engine",style: TextStyle(fontSize: 11,color: HexColor("595959")),),
              SizedBox(height: 20,),
              Text("Personal Details",style: TextStyle(fontSize: 13,color: HexColor("2D2D2D")),),
              SizedBox(height: 12,),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Contact Person',
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
                  )),


              SizedBox(height: 14,),

              Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Email Adress*',
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
                  )),
              SizedBox(height: 44,),
              Row(children: [

                Expanded(child:

              Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Mobile No*',
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
                  )),),SizedBox(width: 12,),Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Alternate Number',
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


                  SizedBox(height: 41,),
              Text("Address",style: TextStyle(fontSize: 13,color:HexColor("333333")),),
              SizedBox(height: 31,),


              Row(children: [Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(

                    decoration: new InputDecoration(
                        alignLabelWithHint: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Building Name*',
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
                    labelText: 'Street*',
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


                  Row(children: [

                Expanded(child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                    padding: const EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Landmark*',
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
                    )),),

                SizedBox(width: 12,),

                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 8),
                  height: 65, child: DropdownButton<String>(
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
                  items: <String>['District*', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),


                    );
                  }).toList(),
                ),),),




              ],),

              Row(children: [Expanded(child: Container(
                padding: EdgeInsets.only(top: 8),

                height: 65, child: DropdownButton<String>(
                value: dropdownValue2,
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
                iconSize: 24,
                elevation: 16,

                style: TextStyle(color: HexColor("595959"),fontSize: 11),
                underline: Container(
                  height: 1,
                  color:HexColor("D1D1D1"),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue2 = newValue;
                  });
                },
                items: <String>['State*', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: SizedBox(child: Text(value,textAlign: TextAlign.center,),),
                  );
                }).toList(),
              ),),),SizedBox(width: 12,),Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Pin*',
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
                  )),)],),



            ],),),
            SizedBox(height: 50,),
            ButtonTheme(minWidth: double.infinity,height: 63,child: RaisedButton(
              color: HexColor("966636"),
              child: Text("CONTINUE",style: TextStyle(color: Colors.white),),

  onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>job_in()));
  },
            ),)


          ],),),
      ),
    );
  }
}
