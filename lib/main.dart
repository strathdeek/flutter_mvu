import 'package:flutter/material.dart';
import 'package:flutter_mvu/background_task.dart';
import 'package:flutter_mvu/pages/counter_view.dart';
import 'package:provider/provider.dart';

import 'mvu/update.dart';

void main() {
  final _update = Update();
  final _backgroundTask = BackgroundTask(_update.dispatch);
  runApp(
    ChangeNotifierProvider(
      create: (context) => _update,
      child: const MyApp(),
    ),
  );
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
