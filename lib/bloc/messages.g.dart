// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension MessageMatch on Message {
  T match<T>(
      {required T Function(DecrementCounter) decrementCounter,
      required T Function(IncrementCounter) incrementCounter,
      required T Function(SetCounterRandom) setCounterRandom,
      required T Function(SetCounterRandomAfterDelay)
          setCounterRandomAfterDelay,
      required T Function(IncrementProgressBar) startProgressBar}) {
    final v = this;
    if (v is DecrementCounter) {
      return decrementCounter(v);
    }

    if (v is IncrementCounter) {
      return incrementCounter(v);
    }

    if (v is SetCounterRandom) {
      return setCounterRandom(v);
    }

    if (v is SetCounterRandomAfterDelay) {
      return setCounterRandomAfterDelay(v);
    }

    if (v is IncrementProgressBar) {
      return startProgressBar(v);
    }

    throw Exception('Message.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function(DecrementCounter)? decrementCounter,
      T Function(IncrementCounter)? incrementCounter,
      T Function(SetCounterRandom)? setCounterRandom,
      T Function(SetCounterRandomAfterDelay)? setCounterRandomAfterDelay,
      T Function(IncrementProgressBar)? startProgressBar}) {
    final v = this;
    if (v is DecrementCounter && decrementCounter != null) {
      return decrementCounter(v);
    }

    if (v is IncrementCounter && incrementCounter != null) {
      return incrementCounter(v);
    }

    if (v is SetCounterRandom && setCounterRandom != null) {
      return setCounterRandom(v);
    }

    if (v is SetCounterRandomAfterDelay && setCounterRandomAfterDelay != null) {
      return setCounterRandomAfterDelay(v);
    }

    if (v is IncrementProgressBar && startProgressBar != null) {
      return startProgressBar(v);
    }

    return any();
  }
}
