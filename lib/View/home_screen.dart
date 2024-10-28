import 'package:get/get.dart';
import 'package:track_fitness/Controller/Home_screen/heading_text.dart';
import 'package:track_fitness/View/health_tips_screen.dart';
import 'package:track_fitness/Controller/Home_screen/app_bar.dart';
import 'package:track_fitness/Controller/Home_screen/big_card.dart';
import 'package:track_fitness/Controller/Home_screen/side_bar.dart';
import 'package:track_fitness/Controller/Home_screen/small_card.dart';
import 'package:flutter/material.dart';

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
              Heading.headingText(),
              Heading.subHeadingText(),
              const SizedBox(height: 6),
              const BigCard(),
              booking(
                '  Health Tips', 
                Icons.health_and_safety_rounded, 
                ()=>Get.to(() => const FitnessDetails())),
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
