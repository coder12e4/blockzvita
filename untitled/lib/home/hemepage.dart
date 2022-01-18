import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/home_cubit/home_cubit.dart';
import 'package:untitled/models/homemodel.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

///hsbbsdfb
class _homepageState extends State<homepage> {
  HomeCubit? _homeCubit;
  List<Gallery>? gallery = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeCubit = HomeCubit();
    _homeCubit!.api_home();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _homeCubit!,
        child: BlocListener<HomeCubit, HomeState>(
          bloc: _homeCubit,
          listener: (context, state) {
            if (state is HomeLoading) {
              print("home loading");
            } else if (state is HomeSuccess) {
              home obj = state.objhome;

              for (int i = 0; i < obj.gallery!.length; i++) {
                gallery!.add(obj.gallery![i]);
              }
            } else {
              print("something went wrong");
            }
          },
          child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
            if (state is HomeLoading) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is HomeSuccess) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: gallery!.length,
                      itemBuilder: (c, i) {
                        return Container(
                          child: Column(
                            children: [Text(gallery![i].content.toString())],
                          ),
                        );
                      }),
                ),
              );
            } else {
              return Container(
                child: Center(
                  child: Text("Error"),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
