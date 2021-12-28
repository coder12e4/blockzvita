import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class invoice extends StatefulWidget {
  @override
  _invoiceState createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: GestureDetector(

            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("#12456",style: TextStyle(color: Colors.black,
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          letterSpacing: 1


      ),),),
      body: Container(

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 217,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(width: 1,color: HexColor("DBDBDB"))),
            child: Column(children: [
            Container(
              
              color: HexColor("F1F1F1"),
              padding: EdgeInsets.all(12),
              
              child: Column(children: [
                Row(
                  children: [
                    Text("Invoice : #123456798",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,letterSpacing: .5),)


                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("09/09/2020",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor("4B4B4B"),letterSpacing: .5),),Expanded(child: SizedBox(height: 2,)),
                    Text("Completed",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("4DA509")),)


                  ],
                ),
                Divider(thickness: 1,height: 1,color: HexColor("F1F1F1"),)
,







              ],)),
              Container(
                margin: EdgeInsets.only(top: 12,bottom: 12,left: 12,right: 12),
                child: Row(
                  children: [
                    Text("Plan",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: HexColor("000000"),letterSpacing: .5),),Expanded(child: SizedBox(height: 2,)),
                    Text("Amount",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("000000")),)


                  ],
                ),
              ),
              Divider(thickness: 1,height: 1,color: HexColor("F1F1F1"),),
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
                    Text("Paymode : Online",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: HexColor("000000"),letterSpacing: .5),),Expanded(child: SizedBox(height: 2,)),
                    Text("Tax    \u20B9 53/-",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:HexColor("000000")),)

                  ],
                ),
              ),

            ],),),

Container(child: Row(
  children: [

Expanded(child: SizedBox(height: 1,)),Text("Total",style: TextStyle(color: HexColor("4B4B4B")),),
    SizedBox(width: 12,),
    Text("\u20B91259/-",style: TextStyle(fontSize: 19,color: HexColor("000000")),)
    ,SizedBox(width: 20,),

  ],
),),

          Expanded(child: SizedBox(width: 1,))

,Container(child: Row(

 children: [
SizedBox(width: 20,),

   Expanded(
     child: Container(
       height: 50,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
         border: Border.all(width: 1,color: HexColor("ABABAB"))
       ),
       child: Center(
       child: Text("Share"),
     ),),
   ),
   SizedBox(width: 20,),
   Expanded(
     child: Container(
       height: 50,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           border: Border.all(width: 1,color: HexColor("ABABAB"))
       ),
       child: Center(
         child: Text("Download"),
       ),),
   ),
   SizedBox(width: 20,),

 ],

),),
SizedBox(height: 60,)

        ],
      ),
    ),);
  }
}
