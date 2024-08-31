import 'package:track_fitness/View/fitness_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp((const ScreenUtilInit(
    designSize: Size(360, 720),
    ensureScreenSize: true,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fitness(),
    ),
  )));
}
