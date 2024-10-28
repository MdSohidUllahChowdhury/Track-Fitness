import 'package:flutter/material.dart';

class Heading {
  static headingText() {
    return const Text(
      'Make Your',
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.2),
    );
  }

  static subHeadingText() {
    return const Text(
      'Body Perfect',
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Color.fromARGB(255, 203, 247, 9)),
    );
  }
}
