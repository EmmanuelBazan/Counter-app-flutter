import 'package:counter_app/components/custom_bar_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int tapsNumber = 0;

  void increse() {
    setState(() {
      tapsNumber++;
    });
  }

  void decrese() {
    setState(() {
      tapsNumber--;
    });
  }

  void reset() {
    setState(() {
      tapsNumber = 0;
    });
  }

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
                '$tapsNumber',
                style: font30,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomBarActionButton(
            decreaseTap: decrese, increaseTap: increse, resetTap: reset));
  }
}
