import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvu/bloc/messages.dart';
import 'package:flutter_mvu/dispatcher.dart';

import '../bloc/update.dart';
import '../bloc/model.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<Update, Model>(
              builder: (context, model) {
                return Text(
                  '${model.counterValue}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            BlocBuilder<Update, Model>(
              builder: (context, model) {
                return SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      value: model.progress,
                    ));
              },
            ),
            ElevatedButton(
                onPressed: () => dispatch(context, IncrementProgressBar()),
                child: Text("Start")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    onPressed: () => dispatch(context, DecrementCounter()),
                    tooltip: 'Decrement',
                    child: const Text("-")),
                FloatingActionButton(
                  onPressed: () => dispatch(context, SetCounterRandom()),
                  tooltip: 'Random',
                  child: const Text("?"),
                ),
                FloatingActionButton(
                  onPressed: () =>
                      dispatch(context, SetCounterRandomAfterDelay()),
                  tooltip: 'DelayedRandom',
                  child: const Icon(Icons.timer),
                ),
                FloatingActionButton(
                  onPressed: () => dispatch(context, IncrementCounter()),
                  tooltip: 'Increment',
                  child: const Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
