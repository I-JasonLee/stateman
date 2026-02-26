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
            backgroundColor: Theme.of(context),
            title: Text(Widget.title),
          ),
        )
      }
    )
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(title),
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //   ),
    //   body: const Center(
    //     child: Text(
    //       'Welcome to My App',
    //       style: TextStyle(fontSize: 20),
    //     ),
    //   ),
    // );
  }
}