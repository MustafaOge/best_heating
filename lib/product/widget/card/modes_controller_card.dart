import 'dart:ffi';

import 'package:best_heating/features/onboarding/onboarding_contents.dart';
import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class NumberControllerButton extends StatefulWidget {
  const NumberControllerButton({super.key});

  @override
  State<NumberControllerButton> createState() => _NumberControllerButtonState();
}

class _NumberControllerButtonState extends State<NumberControllerButton> {
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ProjectColors.white,

        //   color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      height: context.dynamicHeight(0.1),
      width: context.dynamicWidth(0.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          modButton("0", 0),
          modButton("1", 1),
          modButton("2", 2),
          modButton("3", 3),
        ],
      ),
    );
  }

  ElevatedButton modButton(
    final String modText,
    final int modIndex,
  ) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedButtonIndex = modIndex;
        });
      },
      child: Text(modText),
      style: _selectedButtonIndex == modIndex
          ? ElevatedButton.styleFrom(backgroundColor: ProjectColors.darkOrange)
          : ElevatedButton.styleFrom(backgroundColor: ProjectColors.buttonGrey),
    );
  }
}
