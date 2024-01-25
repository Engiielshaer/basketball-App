import 'package:basket_app/basketball.dart';
import 'package:basket_app/cubit/counter_cubit.dart';
//import 'package:basket_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> counterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasketBall(),
      ),
    );
  }
}


