import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const font30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Numero de taps',
              style: font30,
            ),
            Text(
              '10',
              style: font30,
            )
          ],
        ),
      ),
      floatingActionButton:
          const FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
    );
  }
}
