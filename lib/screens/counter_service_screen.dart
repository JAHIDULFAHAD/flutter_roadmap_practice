import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class CounterServiceScreen extends StatelessWidget {
  const CounterServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Service')),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              //Observer pattern
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text('Start counting');
                }
                if (state is CounterPositive) {
                  return Text(
                    state.count.toString(),
                    style: const TextStyle(fontSize: 40),
                  );
                }
                if (state is CounterNegative) {
                  return Text(
                    state.count.toString(),
                    style: const TextStyle(fontSize: 40),
                  );
                }
                return Container();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  label: const Text('Increment'),
                  icon: const Icon(Icons.add),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  label: const Text('Decrement'),
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
