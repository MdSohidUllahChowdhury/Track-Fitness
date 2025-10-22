import 'package:flutter/material.dart';
import 'category.dart';
import 'subcategory.dart';
import 'package:gym_journal/utils/app_colors.dart';

final List<Category> sampleCategories = [
  Category(
    title: 'HIIT',
    description: 'High-Intensity Interval Training',
    icon: Icons.bolt,
    color: AppColors.primaryColor,
    subCategories: [
      SubCategory(
        id: 'hiit_1',
        title: 'Beginner HIIT',
        description:
            '20 min beginner-friendly HIIT session focusing on form and safe progressions.',
        icon: Icons.directions_run,
        color: Colors.deepPurple,
        assetPath: 'assets/icons/hiit.svg',
      ),
      SubCategory(
        id: 'hiit_2',
        title: 'Advanced HIIT',
        description:
            'Intense interval circuits for improving power and conditioning.',
        icon: Icons.flash_on,
        color: Colors.purpleAccent,
        assetPath: 'assets/icons/hiit.svg',
      ),
    ],
  ),
  Category(
    title: 'Yoga',
    description: 'Relaxation and Flexibility',
    icon: Icons.self_improvement,
    color: AppColors.accentColor,
    subCategories: [
      SubCategory(
        id: 'yoga_1',
        title: 'Vinyasa Flow',
        description:
            'Dynamic vinyasa sequences to build strength, mobility and breath control.',
        icon: Icons.self_improvement,
        color: Colors.teal,
        assetPath: 'assets/icons/yoga.svg',
      ),
      SubCategory(
        id: 'yoga_2',
        title: 'Restorative Yoga',
        description:
            'Gentle poses and long holds focused on recovery and relaxation.',
        icon: Icons.spa,
        color: Colors.lightGreen,
        assetPath: 'assets/icons/yoga.svg',
      ),
    ],
  ),
  Category(
    title: 'Weight Gain Diet',
    description: 'Chart for gaining weight',
    icon: Icons.fastfood,
    color: AppColors.gainWight,
    subCategories: [
      SubCategory(
        id: 'gain_1',
        title: 'Calorie Surplus Basics',
        description:
            'How to safely create a calorie surplus and increase lean mass with macros.',
        icon: Icons.restaurant,
        color: Colors.brown,
        assetPath: 'assets/icons/gain.svg',
      ),
      SubCategory(
        id: 'gain_2',
        title: 'Protein Timing',
        description:
            'Strategies for protein distribution through the day to maximize muscle protein synthesis.',
        icon: Icons.egg,
        color: Colors.amber,
        assetPath: 'assets/icons/gain.svg',
      ),
    ],
  ),
  Category(
    title: 'Weight Loss Diet',
    description: 'Chart for losing weight',
    icon: Icons.no_food,
    color: AppColors.lossWight,
    subCategories: [
      SubCategory(
        id: 'loss_1',
        title: 'Sustainable Deficit',
        description:
            'A balanced approach to maintain energy and adherence while losing fat.',
        icon: Icons.local_fire_department,
        color: Colors.redAccent,
        assetPath: 'assets/icons/loss.svg',
      ),
      SubCategory(
        id: 'loss_2',
        title: 'Meal Planning',
        description:
            'Practical meal prep ideas and nutrient-dense swaps for satiety.',
        icon: Icons.event_note,
        color: Colors.orangeAccent,
        assetPath: 'assets/icons/loss.svg',
      ),
    ],
  ),
  Category(
    title: 'Cardio',
    description: 'Heart and circulatory health',
    icon: Icons.directions_run,
    color: Colors.blue,
    subCategories: [
      SubCategory(
        id: 'cardio_1',
        title: 'Steady State',
        description: 'Long-duration moderate cardio for endurance and recovery.',
        icon: Icons.directions_bike,
        color: Colors.lightBlue,
        assetPath: 'assets/icons/cardio.svg',
      ),
      SubCategory(
        id: 'cardio_2',
        title: 'Interval Runs',
        description: 'Track sessions to improve speed and VO2 max.',
        icon: Icons.speed,
        color: Colors.indigo,
        assetPath: 'assets/icons/cardio.svg',
      ),
    ],
  ),
  Category(
    title: 'Strength Training',
    description: 'Build muscle and strength',
    icon: Icons.fitness_center,
    color: Colors.orange,
    subCategories: [
      SubCategory(
        id: 'str_1',
        title: 'Compound Lifts',
        description: 'Programming focused around squat/bench/deadlift/press.',
        icon: Icons.fitness_center,
        color: Colors.deepOrange,
        assetPath: 'assets/icons/strength.svg',
      ),
      SubCategory(
        id: 'str_2',
        title: 'Accessory Work',
        description: 'Accessory exercises to correct imbalances and build detail.',
        icon: Icons.build,
        color: Colors.orangeAccent,
        assetPath: 'assets/icons/strength.svg',
      ),
    ],
  ),
];
