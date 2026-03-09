abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterPositive extends CounterState {
  final int count;

  CounterPositive(this.count);
}

class CounterNegative extends CounterState {
  final int count;

  CounterNegative(this.count);
}
