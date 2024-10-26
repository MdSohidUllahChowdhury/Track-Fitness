import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:track_fitness/View/home_screen.dart';

Widget playList() {
  return Animate(
    child: Container(
      margin: const EdgeInsets.all(6),
      height: 130,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.5),
            )
          ],
          color: const Color.fromARGB(238, 24, 22, 22),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: const Color.fromARGB(106, 207, 191, 191))),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage:
                const CachedNetworkImageProvider('https://picsum.photos/200/300'),
            radius: 45,
            child: IconButton(
                onPressed: () {
                  Get.to(const Fitness());
                },
                icon: const Icon(
                  Icons.play_circle_outline_outlined,
                  color: Colors.black,
                  size: 45,
                )),
          ),
          const SizedBox(width: 8),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text(
                '6 ways to train your Abs',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1:30 Minutes',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          )
        ],
      ),
    ).animate().flip().shimmer(
      color: Colors.white,
      duration: const Duration(seconds: 3)
    )
  );
}
