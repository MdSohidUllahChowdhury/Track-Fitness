import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_fitness/Widgets/Home_screen/app_bar.dart';
import 'package:track_fitness/Widgets/Video_screen/bottom.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .35,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 203, 247, 9),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                Bar.customAppBar(() {
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
                    Icons.arrow_back_ios),
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
                bottom(),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(minTileHeight: 50,
                    title: Container(
                      height:80,
                      width: 5,
                      color: Colors.white,
                      
                    ),
                    subtitle: const Text(
                      'Duration: 30 minutes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                    trailing: const Text(
                      'Sets: 3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w800),
                    ),
                    onTap: () {});
              },
            ),
          )
        ],
      ),
    );
  }
}
