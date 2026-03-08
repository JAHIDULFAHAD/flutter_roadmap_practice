import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/counter_service.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterService service;

  CounterCubit(this.service):super(CounterState(0));

  void increment(){
    final newValue = service.increment(state.count);
    emit(CounterState(newValue));
  }
}