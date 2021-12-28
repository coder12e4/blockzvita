import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/home_cubit.dart';

void main() {
  runApp(const divyaapp());
}

class divyaapp extends StatelessWidget {
  final String? token;
  const divyaapp({Key? key, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "nvdia",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeCubit homeCubit;
  @override
  void initState() {
    homeCubit = HomeCubit();
    // TODO: implement initState
    super.initState();
  }

  var value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) => homeCubit,
            child: BlocListener<HomeCubit, HomeState>(
              bloc: homeCubit,
              listener: (context, state) {
                if (state is HomeInitial) {
                } else if (state is Home_IncrementClicked) {
                } else if (state is Home_IncrementClickedSuccess) {
                  value = state.value;
                } else {}
              },
              child:
                  BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                if (state is HomeInitial) {
                  return buildHomeInitialWidget();
                } else if (state is Home_IncrementClicked) {
                  return buildInProgressWidget();
                } else if (state is Home_IncrementClickedSuccess) {
                  return buildHomeInitialWidget();
                } else {
                  return Container();
                }
              }),
            )));
  }

  //widget for initial
  Widget buildHomeInitialWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value.toString()),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              onClick();
            },
            child: Container(
              color: Colors.yellow,
              height: 70,
              width: 100,
              child: Text("button"),
            ),
          )
        ],
      ),
    );
  }

  Widget buildInProgressWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }

  onClick() {

    homeCubit.increment();
  }
}
