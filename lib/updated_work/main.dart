import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:track_fitness/updated_work/view/fitnessHomeScreen.dart';

void main(){
  runApp(GetMaterialApp(
    theme: ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
    ),
    home: const Fitnesshomescreen(),
  ));
}