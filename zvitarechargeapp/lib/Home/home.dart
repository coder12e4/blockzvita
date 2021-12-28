import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zvitarechargeapp/Compnets/zcitatxt.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.airplane_ticket_sharp,
                size: 25,
                color: Colors.white,
              ),
              zvitatxt(
                value: "Zvita Recharge",
                color: Colors.white,
                size: 16,
                fontWeight: FontWeight.normal,
                letrspcg: .1,
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 2, color: Colors.blueAccent)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.work,
                    color: Colors.blueAccent,
                    size: 24,
                  ),
                  zvitatxt(
                    value: "Accound Balance",
                    color: Colors.blueAccent,
                    size: 24,
                    fontWeight: FontWeight.normal,
                    letrspcg: .1,
                  ),
                  zvitatxt(
                    value: "123",
                    color: Colors.blue,
                    size: 24,
                    fontWeight: FontWeight.bold,
                    letrspcg: .1,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border.all(width: 2, color: Colors.blueAccent)),
                    child: Center(
                      child: zvitatxt(
                        value: "Paynow",
                        color: Colors.blue,
                        size: 12,
                        fontWeight: FontWeight.normal,
                        letrspcg: .1,
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
}
