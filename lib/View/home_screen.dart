import 'package:get/get.dart';
import 'package:track_fitness/Widgets/Home_screen/app_bar.dart';
import 'package:track_fitness/Widgets/Home_screen/big_card.dart';
import 'package:track_fitness/Widgets/Home_screen/side_bar.dart';
import 'package:track_fitness/Widgets/Home_screen/small_card.dart';
import 'package:flutter/material.dart';
import 'package:track_fitness/view/detailes_screen.dart';

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _LearningState();
}

class _LearningState extends State<Fitness> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: Bar.customAppBar(
            () {}, // rightBottomPath,
            () {}, //leftBottomPath,
            Icons.arrow_circle_right,
            Icons.menu_rounded),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Make Your',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2),
              ),
              const Text(
                'Body Perfect',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Color.fromARGB(255, 203, 247, 9)),
              ),
              const SizedBox(height: 6),
              const BigCard(),
              booking('  Health Tips', Icons.health_and_safety_rounded, () {
                Get.to(() => const FitnessDetails());
              }),
              const SizedBox(height: 12),
              const SmallTwoCard(),
              const SizedBox(height: 12),
              booking(
                '  Appoinment',
                Icons.call,
                () => Get.snackbar(
                  'Developer Message',
                  'Sorry for this.\nWorking going on',
                  backgroundColor: const Color.fromARGB(255, 203, 247, 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
