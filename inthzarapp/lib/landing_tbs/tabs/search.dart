import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/location/location_dummy.dart';

import '../landing_tabs_home.dart';
class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  final input_controller_search=TextEditingController();
  final input_controller_search1=TextEditingController();
  final input_controller_search2=TextEditingController();

  List<ListItem<String>> list;

  bool checkedValue=false;

  @override
  void initState() {
    super.initState();
    populateData();
  }

  void populateData() {
    list = [];
    for (int i = 0; i < 10; i++)
      list.add(ListItem<String>("item $i"));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));

        return true;

      },

      child: Scaffold(

        appBar: AppBar(
          titleSpacing: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10,top: 19,bottom: 19),
              height: 24,
              width: 50,

              child: Center(
                child: Text("RESET",style: TextStyle(color: HexColor("3D3D3D"),fontSize: 11),),
              ),

              decoration: BoxDecoration(
                  color:HexColor("E2E2E2"),
                  borderRadius: BorderRadius.all(Radius.circular(24))
              ),
            ),


          ],
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
              },
              child: Icon(Icons.keyboard_backspace,color: Colors.black,)),
            backgroundColor: Colors.white,title: Text("SEARCH",
          style: TextStyle(color: Colors.black,

            letterSpacing: 0.5,

            fontSize: 16,

            fontWeight: FontWeight.w400, // light
            fontStyle: FontStyle.normal,

          ),),),

        body: SingleChildScrollView(
          child: Container(

            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 11,),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
                 Icon(Icons.location_on,color: HexColor("DADADA"),size: 18,),
              GestureDetector(
    onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>location_dummy()));
                },
                child: Text("Explore it solutions,kozhikode kerala ",overflow: TextOverflow.ellipsis,style: TextStyle(
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    fontSize: 11,color: HexColor("545353")),),
              )
          ],
          ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top: 0),
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
                                      fillColor: HexColor("FFFFFF"),
                                      hintStyle: TextStyle(fontSize: 12, letterSpacing: 0.5,
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,
                                      ),
                                      hintText: 'Search Eg.Hospital,Job '
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

                            ),

                          ],
                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  height: 14,
                  child: Row(children: [ SizedBox(width: 20,),Text("District Wise",style: TextStyle(
                      fontSize: 15,color: HexColor("333333"),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,

                  ),)],),
                ),

                Container(height: 40,width: double.infinity,child:new ListView.builder(
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 5),
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            list[Index].isSelected = true;
                          });
                        },
                        // onDoubleTap: (){
                        //   list[Index].isSelected = false;
                        // },

                        child: new Container(
                          height: 30,
                          width: 108,
                          margin: EdgeInsets.only(left: 4, right: 4, top: 15),
                          decoration: BoxDecoration(
                              color:list[Index].isSelected ? HexColor("FAA51A") : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: HexColor("4B4B4B"), width: 0.4)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0,right: 0,bottom: 0,left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Malappuram",
                                  style: TextStyle(
                                      color: HexColor("4B4B4B"),
                                      fontSize: 13,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400, // light
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),),
                SizedBox(height: 15,),
                Divider(thickness: 5,color: HexColor("EEEEEE"),),
                SizedBox(height: 15,),
                Row(children: [ SizedBox(width: 20,),Text("Locality Wise",style: TextStyle(fontSize: 15,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    color: HexColor("333333")),)],),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 225,width: double.infinity,child: Stack(

                  children: [
                    Container(height: 300,width: double.infinity,
                    padding: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                          border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                      ),
                      child: Column(children: [

                        Expanded(
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 0,right: 0),
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext ctxt, int Index) {
                                return Container(
                                  height: 40,
                                  child: CheckboxListTile(title: Text("Location 1",style: TextStyle(fontSize: 13),), value: checkedValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkedValue = newValue;
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                                  ),
                                );
                              }),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("Show all",style: TextStyle(color: HexColor("838383")),),


                          )],)



                      ],),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 0,right: 0,top: 0),
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

                                      controller: input_controller_search1,
                                      decoration: new InputDecoration.collapsed(
                                          fillColor: HexColor("FFFFFF"),
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

                                ),

                              ],
                            ),
                          ),
                        )

                      ],
                    ),

                  ],
                ),),
                SizedBox(height: 15,),
                Row(children: [ SizedBox(width: 20,),Text("Category Wise",style: TextStyle(fontSize: 15,

                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,

                    color: HexColor("333333")),)],),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 225,width: double.infinity,child: Stack(

                  children: [
                    Container(height: 300,width: double.infinity,
                      padding: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                          border: Border.all(color:HexColor("C6C6C6"),width: 0.3)
                      ),
                      child: Column(children: [

                        Expanded(
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 0,right: 0),
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext ctxt, int Index) {
                                return Container(
                                  height: 40,
                                  child: CheckboxListTile(title: Text("Category 1",style: TextStyle(fontSize: 13),), value: checkedValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkedValue = newValue;
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                                  ),
                                );
                              }),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("Show all",style: TextStyle(color: HexColor("838383")),),


                          )],)



                      ],),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 0,right: 0,top: 0),
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

                                      controller: input_controller_search2,
                                      decoration: new InputDecoration.collapsed(
                                          fillColor: HexColor("FFFFFF"),
                                          hintStyle: TextStyle(fontSize: 12),
                                          hintText: 'Search  '
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

                                ),

                              ],
                            ),
                          ),
                        )

                      ],
                    ),

                  ],
                ),),
                SizedBox(height: 40,),
                Container(
                  margin: EdgeInsets.only(left: 0,right: 0,top: 0),
                  child: ButtonTheme(
                    minWidth: double.infinity,
                    height: 53,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      onPressed: () {

                        //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> landing()));

                      },
                      color:HexColor("966636"),
                      textColor: Colors.white,
                      child: Text("SEARCH".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ),
                SizedBox(height: 100,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ListItem<T> {
  bool isSelected = false; //Selection property to highlight or not
  T data; //Data of the user
  ListItem(this.data); //Constructor to assign the data
}