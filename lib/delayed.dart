import 'package:flutter/material.dart';
import 'package:flutter_mvu/mvu/update.dart';

import 'mvu/messages.dart';
import 'mvu/model.dart';

void dispatchSetCounterRandomAferDelay(BuildContext context) {
  Future.delayed(const Duration(seconds: 1))
      .then((value) => dispatch(context, SetCounterRandom()));
}

void dispatchIncrementProgressBarAfterDelay(BuildContext context) {
  Future.delayed(const Duration(milliseconds: 1))
      .then((value) => dispatch(context, IncrementProgressBar()));
}
