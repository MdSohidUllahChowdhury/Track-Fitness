import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gym_journal/view/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF6A1B9A),
      scaffoldBackgroundColor: const Color(0xFF0B1020),
      cardColor: const Color(0xFF121426),
      //textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    ),
    home: const SplashScreen(),
  ));
}
