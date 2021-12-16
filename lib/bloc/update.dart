import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_mvu/bloc/messages.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_mvu/delayed.dart';

import 'model.dart';

class Update extends Bloc<Message, Model> {
  Update() : super(const Model(progress: 0, counterValue: 0)) {
    on<Message>((message, command) {
      final newModel = update(message, state);
      newModel.forEach(emit);
    });
  }

  Option<Model> update(Message message, Model model) {
    return message.match(
        decrementCounter: (_) =>
            some(model.copyWith(counterValue: model.counterValue - 1)),
        incrementCounter: (_) =>
            some(model.copyWith(counterValue: model.counterValue + 1)),
        setCounterRandom: (_) =>
            some(model.copyWith(counterValue: Random().nextInt(100))),
        setCounterRandomAfterDelay: (_) => delayedMessage(add),
        startProgressBar: (_) => delayedProgressMessage(add, model));
  }
}
