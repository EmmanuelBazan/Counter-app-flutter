import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int taps_number = 0;
  @override
  Widget build(BuildContext context) {
    const font30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Numero de taps',
              style: font30,
            ),
            Text(
              '$taps_number',
              style: font30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  taps_number--;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined)),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  taps_number = 0;
                });
              },
              child: const Icon(Icons.exposure_outlined)),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  taps_number++;
                });
              },
              child: const Icon(Icons.exposure_plus_1_outlined)),
        ],
      ),
    );
  }
}
