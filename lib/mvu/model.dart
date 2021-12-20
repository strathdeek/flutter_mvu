import 'package:flutter/material.dart';

@immutable
class Model {
  final int counterValue;
  final double progress;

  const Model({required this.counterValue, required this.progress});

  Model copyWith({
    int? counterValue,
    double? progress,
  }) {
    return Model(
      counterValue: counterValue ?? this.counterValue,
      progress: progress ?? this.progress,
    );
  }
}
