import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_fitness/old_ui/Widget/Home_screen/app_bar.dart';
import 'package:track_fitness/old_ui/Widget/Video_screen/bottom.dart';

Widget nonPlayer(BuildContext context) {
  return Container(
    height: MediaQuery.sizeOf(context).height * .30,
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 203, 247, 9),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
    child: Column(
      children: [
        Bar.customAppBar(
          () {
            Get.snackbar(
              'Video Suggestion',
              'Follow all videos.\nMake your body perfect',
              barBlur: 2.5,
              backgroundColor: Colors.white,
            );
          }, // rightBottomPath,
          () {
            Get.back();
          }, //leftBottomPath,
          Icons.info_outline,
          Icons.arrow_circle_left_outlined,
        ),
        const Center(
            child: Text(
          'GET RIPPED ABS\nCORE WORKOUT CHALLANGE',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 24,
              letterSpacing: 1.3,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        )).marginOnly(left: 20),
        const SizedBox(height: 25),
        bottom(context),
      ],
    ),
  );
}
