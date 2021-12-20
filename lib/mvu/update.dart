import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_mvu/async_operations.dart';
import 'package:provider/provider.dart';

import 'messages.dart';
import 'model.dart';

class Update extends ChangeNotifier {
  Model model = const Model(counterValue: 0, progress: 0);

  void dispatch(Message message) {
    final newModel = update(message, model, dispatch);

    newModel.map((a) => _emit(a));
  }

  // method to notify the UI to rebuild a new view with the provided model.
  void _emit(Model newModel) {
    model = newModel;
    notifyListeners();
  }
}

Option<Model> update(Message message, Model model, Function(Message) dispatch) {
  switch (message.runtimeType) {
    case DecrementCounter:
      return some(model.copyWith(counterValue: model.counterValue - 1));
    case IncrementCounter:
      return some(model.copyWith(counterValue: model.counterValue + 1));
    case SetCounterRandom:
      return some(model.copyWith(counterValue: Random().nextInt(100)));
    case SetCounterRandomAfterDelay:
      dispatchSetCounterRandomAferDelay(dispatch);
      return none();
    case StartProgressBar:
      dispatchIncrementProgressBarAfterDelay(dispatch);
      return none();
    case IncrementProgressBar:
      final newModel = model.copyWith(progress: model.progress + .001);
      if (newModel.progress < 1) {
        dispatchIncrementProgressBarAfterDelay(dispatch);
      }
      return some(newModel);
    case ResetProgressBar:
      return some(model.copyWith(progress: 0));
    default:
      return none();
  }
}

void dispatch(BuildContext context, Message message) {
  Provider.of<Update>(context, listen: false).dispatch(message);
}
