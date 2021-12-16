import 'package:dartz/dartz.dart';

import 'bloc/messages.dart';
import 'bloc/model.dart';

Option<Model> delayedMessage(Function add) {
  Future.delayed(const Duration(seconds: 1))
      .then((value) => add(SetCounterRandom()))
      .then((value) => none());
  return none();
}

Option<Model> delayedProgressMessage(Function add, Model model) {
  if (model.progress >= 1) {
    return none();
  }
  Future.delayed(const Duration(milliseconds: 300))
      .then((value) => add(IncrementProgressBar()));
  return some(model.copyWith(progress: model.progress + 0.05));
}
