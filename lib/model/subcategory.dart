import 'package:flutter/material.dart';

class SubCategory {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final String? assetPath;

  SubCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.assetPath,
  });
}
