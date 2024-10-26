import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_fitness/Controller/Home_screen/app_bar.dart';
import 'package:track_fitness/Controller/Video_screen/bottom.dart';
import 'package:track_fitness/Controller/Video_screen/data_insart.dart';
import 'package:track_fitness/Controller/Video_screen/play_list.dart';

class VideoScreen extends StatelessWidget {
   VideoScreen({super.key});
  final dataCalling = data_insart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .30,
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
          const SizedBox(height: 4,),
          const SizedBox(
            height:30,
            child: Row(
              children: [
                Text(
                  '   Playlist:1 Abs & Legs',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4,),
                Icon(Icons.playlist_add_circle_sharp,color: Colors.white,size:24,)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dataCalling.length,
              itemBuilder: (context, index) {
               final data = dataCalling[index];
              return playList(
                data.video_title, 
                data.video_duration
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
