import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../mvu/messages.dart';
import '../mvu/update.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Update>(builder: ((context, value, child) {
              return Text(
                '${value.model.counterValue}',
                style: Theme.of(context).textTheme.headline4,
              );
            })),
            Consumer<Update>(builder: ((context, value, child) {
              return SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    value: value.model.progress,
                  ));
            })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => dispatch(context, StartProgressBar()),
                    child: const Text("Start")),
                ElevatedButton(
                    onPressed: () => dispatch(context, ResetProgressBar()),
                    child: const Text("Reset")),
              ],
            ),
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
