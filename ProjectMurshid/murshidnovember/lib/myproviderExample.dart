import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class person with ChangeNotifier {
  final String? name;
  int? age;
  person(this.name, this.age);

  void increaseAge() {
    this.age = age! + 1;
    notifyListeners();
  }
}

class pro extends StatefulWidget {
  const pro({Key? key}) : super(key: key);

  @override
  _proState createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => person("Yohan", 25),
      child: Scaffold(
        body: Consumer<person>(
          builder: (context, person, child) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${person.age}"),
                  GestureDetector(
                    onTap: () {
                      person.increaseAge();
                    },
                    child: Container(
                      color: Colors.purpleAccent,
                      margin: EdgeInsets.all(20),
                      height: 60,
                      width: 30,
                      child: Text('add age'),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
