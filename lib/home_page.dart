import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateman/counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:
              Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(
            child: Text(value.angka.toString(),
            style: Theme.of(context)
            .textTheme
            .headlineMedium,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add)
          ),
        );
      },
    );
  }
}