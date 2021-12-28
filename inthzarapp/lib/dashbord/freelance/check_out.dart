import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/filter/filter.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/thankyou.dart';
class check_out extends StatefulWidget {
  @override
  _check_outState createState() => _check_outState();
}

class _check_outState extends State<check_out> {
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
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("Checkout".toUpperCase(),style: TextStyle(
          fontSize: 16,
          letterSpacing: 1,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          color: Colors.black
      ),),),

      body: Container(
        color: HexColor("E5E5E5"),
        child: Column(
      children: [
Container(
  margin: EdgeInsets.only(top: 5),
  height: 200,
  padding: EdgeInsets.only(left: 20,right: 20,top: 20),
  color: Colors.white,
  width: double.infinity,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Text("YOUR PLAN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1),),
      Container(
        margin: EdgeInsets.only(top: 26,bottom: 26,left: 12,right: 12),
        child: Row(
          children: [
            Text("Premium Plan",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: HexColor("000000"),letterSpacing: .5),),
            Expanded(child: SizedBox(height: 2,)),
            Text(" 12 Month",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("000000")),),
            Expanded(child: SizedBox(height: 2,)),
            Text("\u20B9 1204/-",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("000000")),)


          ],
        ),
      ),
      Divider(thickness: 1,height: 1,color: HexColor("F1F1F1"),),
      Container(
        margin: EdgeInsets.only(top: 12,bottom: 12,left: 12,right: 12),
        child: Row(
          children: [
            Text("",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: HexColor("000000"),letterSpacing: .5),),Expanded(child: SizedBox(height: 2,)),
            Text("Tax    \u20B9 53/-",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("000000")),)
            ,
          ],
        ),
      ),
      Container(child: Row(
        children: [

          Expanded(child: SizedBox(height: 1,)),Text("Total",style: TextStyle(color: HexColor("4B4B4B")),),
          SizedBox(width: 12,),
          Text("\u20B9 1259/-",style: TextStyle(fontSize: 19,color: HexColor("000000")),)
          ,SizedBox(width: 20,),

        ],
      ),),
    ],
  ),
),
        Container(margin: EdgeInsets.only(left: 20,top: 30,bottom: 20),child:  Row(
          children: [
            Text("Select Payment Mode".toUpperCase(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1),)
          ],
        ),),
        Container(
            margin: EdgeInsets.only(left: 10,top: 0,bottom: 30),
          child: Row(
          children: [
            Image.asset("assets/payment_option.png")
          ],
        ),),

        Expanded(child: SizedBox(width: 1,)),

        ButtonTheme(minWidth: double.infinity,height: 63,child: RaisedButton(
          color: HexColor("966636"),
          child: Text("PAY NOW",style: TextStyle(color: Colors.white),),

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>thankyou()));
          },
        ),)


      ],
    ),),);
  }
}
