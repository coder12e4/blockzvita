import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Deep(),
    );
  }
}

class Deep extends StatefulWidget {
  const Deep({Key? key}) : super(key: key);

  @override
  _DeepState createState() => _DeepState();
}

class _DeepState extends State<Deep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyanAccent,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
