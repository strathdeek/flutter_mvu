import 'mvu/messages.dart';

void dispatchSetCounterRandomAferDelay(Function(Message) dispatch) {
  Future.delayed(const Duration(seconds: 1))
      .then((value) => dispatch(SetCounterRandom()));
}

void dispatchIncrementProgressBarAfterDelay(Function(Message) dispatch) {
  Future.delayed(const Duration(milliseconds: 1))
      .then((value) => dispatch(IncrementProgressBar()));
}
