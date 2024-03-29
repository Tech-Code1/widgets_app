import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/providers.dart';


class CounterScreen extends ConsumerWidget {

  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final TextStyle? textCounter = Theme.of(context).textTheme.displayLarge;
    final int clickCounter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: textCounter),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {        
          /* ref.read(counterProvider.notifier)
          .update((state) => state + 1); */
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}