import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/counter_service.dart';
import 'counter_state.dart';
import 'counter_state_factory.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterService service;
  int count = 0;

  CounterCubit(this.service) : super(CounterInitial()); //Dependency Injection

  void increment() {
    count = service.increment(count);
    emit(CounterStateFactory.create(count)); //state change , observe blocbuilder
  }

  void decrement() {
    count = service.decrement(count);
    emit(CounterStateFactory.create(count)); //state change , observe blocbuilder
  }
}
