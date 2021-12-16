import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvu/bloc/update.dart';
import 'package:flutter_mvu/dispatcher.dart';
import 'package:flutter_mvu/pages/counter_view.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => Update(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterView(),
    );
  }
}
