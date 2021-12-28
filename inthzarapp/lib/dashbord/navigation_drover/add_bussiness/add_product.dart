import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/add_bussines_inner.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/bussines_page.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/thankyou.dart';
class add_products extends StatefulWidget {
  @override
  _add_productsState createState() => _add_productsState();
}

class _add_productsState extends State<add_products> {
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
        title: Text("ADD PRODUCTS",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 31,right: 31),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 19,),
                  Text("Add your products",style: TextStyle(fontSize: 13,color: HexColor("2D2D2D")),),
                  SizedBox(height: 12,),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                      padding: const EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: new InputDecoration(
                            alignLabelWithHint: false,
                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Name of Product*',
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

                  SizedBox(height: 12,),


                  Row(children: [Expanded(child: Container(margin: EdgeInsets.fromLTRB(0, 0,0, 0), padding: const EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: new InputDecoration(
                            alignLabelWithHint: false,
                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Rate*',
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
                ],),),
          ),

          SizedBox(height: 20,),

          ButtonTheme(minWidth: double.infinity,height: 63,child: RaisedButton(
            color: HexColor("966636"),
            child: Text("Add Product".toUpperCase(),style: TextStyle(color: Colors.white),),

            onPressed: (){
               //Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>thankyou()));
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return  Dialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        height: 210,
                        width: 317,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.close),onPressed: (){},)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Thankyou",style: TextStyle(fontSize: 24),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Your Products added",style: TextStyle(fontSize: 24),)
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                       height:39,
                                       width: 109,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        border: Border.all(color: Colors.grey)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Add New",style: TextStyle(fontSize: 14,color: Colors.black)),
                                          Icon(Icons.add)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> add_bussiness_()));
                                    },
                                    child: Container(
                                      height:39,
                                      width: 109,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15.0),
                                          border: Border.all(color: Colors.grey),
                                          color:HexColor("FAA51A"),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Compleated",style: TextStyle(fontSize: 14,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  );
                }
                );
            },
          ),)


        ],),)

    );
  }
}
