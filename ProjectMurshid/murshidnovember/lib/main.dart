import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loginpage1/login.dart';
import 'package:loginpage1/pages/homepage.dart';


import 'login.dart';
import 'myproviderExample.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginpage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height * .95,
          color: Colors.redAccent,
          child: Center(
            child: Text(
              "age",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>homepage()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 60,
                    width: 210,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerpage()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 60,
                    width: 210,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )),
        Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pro()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    width: 223,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => apicalling()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    width: 223,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ],
    ));
  }
}

class apicalling extends StatefulWidget {
  const apicalling({Key? key}) : super(key: key);

  @override
  _apicallingState createState() => _apicallingState();
}

class _apicallingState extends State<apicalling> {
  Future<void> api_calling() async {
    var weburl = Uri.parse(
        "https://run.mocky.io/v3/03e0a954-26fa-4d6f-98f6-8b2d634a2cc2");
    var res = await http.get(weburl);
    if (res.statusCode == 200) {
      print(res.body);
    } else {
      print(res.statusCode);
    }
  }
    Future? obj_future;
    
  @override
  void initState() {
    api_calling();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
