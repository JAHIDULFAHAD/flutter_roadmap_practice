import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';
class CounterServiceScreen extends StatelessWidget {
  const CounterServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Service'),
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton.icon(onPressed: (){
              context.read<CounterCubit>().increment();
            }, label:
            const Text('Increment'), icon: const Icon(Icons.add))
          ],
        )
      ),
    );
  }
}
