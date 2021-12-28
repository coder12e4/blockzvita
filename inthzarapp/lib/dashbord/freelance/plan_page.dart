import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/filter/filter.dart';

import 'check_out.dart';
class plan_page extends StatefulWidget {
  @override
  _plan_pageState createState() => _plan_pageState();
}

class _plan_pageState extends State<plan_page> {
  String dropdownValue1="1 MONTH";
  List<int> _selectedItems = List<int>();
  final scroll=ScrollController();
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
                  Icons.settings_input_composite,color: Colors.black54,size: 18,
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
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("PLAN",style: TextStyle(
          fontSize: 16,
          letterSpacing: 1,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          color: Colors.black
      ),),),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(margin: EdgeInsets.only(top: 30,left: 20,bottom: 30),child: Text("SELECT PLAN",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,letterSpacing: 1),),)
        ,Container(
            margin: EdgeInsets.only(left: 12),
          width: double.infinity,
          height: 320,
         child: Theme(
           data: ThemeData( highlightColor: Colors.black87),
           child: Scrollbar(
             controller: scroll,
             //thickness: 5,
             isAlwaysShown: true,
             child: ListView.builder(
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               itemCount: 5,
               itemBuilder: (BuildContext context, int index) =>



                   GestureDetector(
                     onTap: (){
                       if(! _selectedItems.contains(index)){
                         setState(() {
                           _selectedItems.add(index);
                         });
                       }

                     },
                     onDoubleTap: (){
                       if(_selectedItems.contains(index)){
                         setState(() {
                           _selectedItems.removeWhere((val) => val == index);
                         });
                       }
                     },
                     child: Container(
                 width: 280,


                 child: Stack(children: [
                     Card(
                       color: Colors.transparent,
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       child: Image.asset(
                         'assets/rect_plan.png',
                         fit: BoxFit.fill,
                       ),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       elevation: 0,

                     ),

                     Visibility(
                       visible: (_selectedItems.contains(index))?true:false,
                       child: Positioned(top: 10,left: 10,
                           child: Container(height: 24,width: 24,decoration: BoxDecoration(color: HexColor("FFBA09"),
                               borderRadius: BorderRadius.circular(24)),child: Icon(Icons.check,size: 20,),)),
                     ),
                     Positioned(left: 35,top: 30,child: Text("FREE",style: TextStyle(color: HexColor("000000"),fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1),)),
                     Positioned(child: Container(

  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: HexColor("ffffff")),
  width: 75,
  padding: EdgeInsets.only(left: 0,right: 0),
  height: 20, child: Center(
    child: DropdownButton<String>(
    value: dropdownValue1,

    isExpanded: true,
    icon: Icon(Icons.arrow_drop_down,color:HexColor("8B8B8B"),),
    iconSize: 20,
    elevation: 12,

    style: TextStyle(color: HexColor("595959"),fontSize: 11,),

    underline:SizedBox(),
    onChanged: (String newValue) {
      setState(() {
        dropdownValue1 = newValue;
      });
    },
    items: <String>['1 MONTH', '2 MONTH', '3 MONTH', '4 MONTH']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: SizedBox(child: Center(child: Text(value,textAlign: TextAlign.center,)),),


      );
    }).toList(),
),
  ),),right: 35,top: 30),
                     Positioned(
                      left: 40,top: 60,
                         child: Container(
                       height: 160,
                       width: 150,
                       child: new ListView.builder
                         (
                           itemCount: 10,
                           itemBuilder: (BuildContext ctxt, int index) {
                             return new Container(
                               margin: EdgeInsets.only(top: 6,bottom: 6),
                               child: Row(children: [
                               Visibility(visible: false,child: Icon(Icons.check,size: 16,)),GestureDetector(onTap: (){
                                 print(index);
                                 },child: Text(" Feature",style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1),))


                             ],),);
                           }
                       ),

                     )),








                 ],),
               ),
                   ),
             ),
           ),
         ),
        ),

          SizedBox(height: 40,),

          Container(margin: EdgeInsets.only(top: 30,left: 20,bottom: 5),child: Text("NOTE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,letterSpacing: 1),),),
          Container(margin: EdgeInsets.only(top: 8,left: 20,bottom: 30,right: 10),child: Text("Lorem ipsum doler site amet is dummy text of printing and app",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,letterSpacing: 1),),),
Expanded(child: SizedBox(width: 1,)),

          ButtonTheme(minWidth: double.infinity,height: 63,child: RaisedButton(
            color: HexColor("966636"),
            child: Text("CONTINUE",style: TextStyle(color: Colors.white),),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>check_out()));
            },
          ),)

        ],),);
  }
}
