import 'package:get/get.dart';
import 'package:track_fitness/old_ui/View/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp((ScreenUtilInit(
    designSize: const Size(360, 720),
    ensureScreenSize: true,
    child: GetMaterialApp(
      theme: ThemeData(fontFamily: 'g_font'),
      debugShowCheckedModeBanner: false,
      home: const Fitness(),
    ),
  )));
}
