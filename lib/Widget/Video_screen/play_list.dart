import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:track_fitness/View/video_player.dart';

Widget playList(String title,String duration,) {
  return Animate(
  child: Expanded(
    child: Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(6),
      height: 130,
      decoration: BoxDecoration(
          color: const Color.fromARGB(238, 24, 22, 22),
          border: Border.all(color: const Color.fromARGB(106, 207, 191, 191)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.5),
            )
           ]
          ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            radius: 45,
            child: IconButton(
                onPressed: (){
                  Get.to(()=>const VideoPlayer());
                },
                icon: const Icon(Icons.play_circle_outline_outlined,
                  color: Colors.black,size: 45,)
                ),
           ),
          
          const SizedBox(width: 8),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize:12.5,
                  //fontWeight: FontWeight.w400,
                  //letterSpacing: 1.2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                '$duration Minutes',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize:12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
    
        ],
      ),
    ).animate().flip().shimmer(
      color: Colors.white, 
      duration: const Duration(seconds: 3)
      ),
  )
  );
}
