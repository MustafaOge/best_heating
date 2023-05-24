import 'package:best_heating/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:numberpicker/numberpicker.dart';

// class ModesAutoControllerCardState extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeController());
//     return Scaffold(
//       body: Container(
//         height: 200,
//         width: 200,
//         child: Column(
//           children: [
//             Obx(() => NumberPicker(
//                   minValue: 18,
//                   maxValue: 30,
//                   value: controller.currentValue.value,
//                   onChanged: (value) {
//                     controller.currentValue.value = value;
//                   },
//                   selectedTextStyle:
//                       TextStyle(fontSize: 30, color: Colors.deepOrange),
//                   axis: Axis.horizontal,
//                 )),
//             Obx(() => Text("Current Value : ${controller.currentValue.value}")),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class ModesAutoControllerCardState extends StatefulWidget {
//   const ModesAutoControllerCardState({super.key});

//   @override
//   State<ModesAutoControllerCardState> createState() =>
//       _ModesAutoControllerCardStateState();
// }

// var currentValue = 24;

// class _ModesAutoControllerCardStateState
//     extends State<ModesAutoControllerCardState> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 200,
//         child: NumberPicker(
//             minValue: 18,
//             maxValue: 30,
//             value: currentValue,
//             onChanged: (value) {
//               currentValue = value;
//             }),
//       ),
//     );
//   }
// }
