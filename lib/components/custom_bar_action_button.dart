import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBarActionButton extends StatelessWidget {
  final Function increaseTap;
  final Function decreaseTap;
  final Function resetTap;

  const CustomBarActionButton(
      {super.key,
      required this.increaseTap,
      required this.decreaseTap,
      required this.resetTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            onPressed: () => decreaseTap(),
            child: const Icon(Icons.exposure_minus_1_outlined)),
        FloatingActionButton(
            onPressed: () => resetTap(),
            child: const Icon(Icons.exposure_outlined)),
        FloatingActionButton(
            onPressed: () => increaseTap(),
            child: const Icon(Icons.exposure_plus_1_outlined)),
      ],
    );
  }
}
