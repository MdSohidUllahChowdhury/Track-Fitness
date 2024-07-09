import 'package:course_selling_app/view/fitness_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const Track_Fitness());
  
}
// ignore: camel_case_types
class Track_Fitness extends StatelessWidget {
  const Track_Fitness({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 720),
      ensureScreenSize: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Fitness(),
      ),
    );
  }
}