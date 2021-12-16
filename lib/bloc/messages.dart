import 'package:match/match.dart';

part 'messages.g.dart';

@match
abstract class Message {}

class DecrementCounter implements Message {}

class IncrementCounter implements Message {}

class SetCounterRandom implements Message {}

class SetCounterRandomAfterDelay implements Message {}

class IncrementProgressBar implements Message {}
