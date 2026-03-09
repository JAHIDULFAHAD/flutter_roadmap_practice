import 'package:flutter_roadmap_practice/cubit/counter_state.dart';

class CounterStateFactory {
  static CounterState create(int count){
    if(count >= 0){
      return CounterPositive(count);
    } if (count < 0){
      return CounterNegative(count);
    }
    else{
      return CounterInitial();
    }
  }
}