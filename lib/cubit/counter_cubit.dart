import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/counter_service.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterService service;
  int count = 0;

  CounterCubit(this.service) : super(CounterInitial()); //Dependency Injection

  void increment() {
    count = service.increment(count);

    if (count >= 0) {
      emit(CounterPositive(count)); //state change , observe blocbuilder
    } else {
      emit(CounterNegative(count)); //state change , observe blocbuilder
    }
  }

  void decrement() {
    count = service.decrement(count);

    if (count >= 0) {
      emit(CounterPositive(count)); //state change , observe blocbuilder
    } else {
      emit(CounterNegative(count)); //state change , observe blocbuilder
    }
  }
}
