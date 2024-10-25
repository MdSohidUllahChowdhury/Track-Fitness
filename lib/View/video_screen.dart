import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_fitness/Widgets/Home_screen/app_bar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Bar.customAppBar(
            () {
            ()=>Get.snackbar(
              'Video Suggestion',
              'Follow all videos.\nMake your body perfect',
              barBlur: 2.5,
              backgroundColor: const Color.fromARGB(255, 203, 247, 9),
            );
          }, // rightBottomPath,
            () {
            ()=>Get.back();
          }, //leftBottomPath,
              Icons.info_outline,
              Icons.arrow_back_ios),
          Container(
            height: MediaQuery.sizeOf(context).height*4,
            decoration: BoxDecoration(
              color:Colors.deepPurpleAccent,
            ),
        
          )

        ],
      ),
    );
  }
}
