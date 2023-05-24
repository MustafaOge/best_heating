import 'dart:ffi';

import 'package:best_heating/features/onboarding/onboarding_contents.dart';
import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ModesControllerCard extends StatefulWidget {
  const ModesControllerCard({super.key});

  @override
  State<ModesControllerCard> createState() => _ModesControllerCardState();
}

CollectionReference users = FirebaseFirestore.instance.collection('users');

class _ModesControllerCardState extends State<ModesControllerCard> {
  int _selectedButtonIndex = 0;
  void sendDataToFirebase(int buttonNumber) {
    FirebaseFirestore.instance.collection('buttonData').add({
      'buttonNumber': buttonNumber,
      'timestamp': Timestamp.now(),
    }).then((value) {
      print('Veri başarıyla Firestore\'a gönderildi!');
    }).catchError((error) {
      print('Hata oluştu: $error');
    });
  }

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
          sendDataToFirebase(modIndex); // Firebase'e veriyi gönder
          print("$sendDataToFirebase(modIndex)");
        });
      },
      child: Text(modText),
      style: _selectedButtonIndex == modIndex
          ? ElevatedButton.styleFrom(backgroundColor: ProjectColors.darkOrange)
          : ElevatedButton.styleFrom(backgroundColor: ProjectColors.buttonGrey),
    );
  }
}
