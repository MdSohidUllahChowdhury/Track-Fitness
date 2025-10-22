
import 'package:flutter/material.dart';
import 'subcategory.dart';

class Category {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final List<SubCategory> subCategories;

  Category({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.subCategories = const [],
  });
}
