import 'package:get/get.dart';
import 'package:track_fitness/View/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp((const ScreenUtilInit(
    designSize: Size(360, 720),
    ensureScreenSize: true,
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fitness(),
    ),
  )));
}