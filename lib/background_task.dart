import 'dart:async';

import 'mvu/messages.dart';

class BackgroundTask {
  Timer? _timer;
  final Function(Message) dispatch;

  BackgroundTask(this.dispatch) {
    _timer = Timer.periodic(const Duration(seconds: 1), _timerCallback);
  }

  void _timerCallback(Timer _) {
    dispatch(IncrementCounter());
  }
}
