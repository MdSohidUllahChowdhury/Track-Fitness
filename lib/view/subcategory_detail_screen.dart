import 'package:flutter/material.dart';
import 'package:gym_journal/model/subcategory.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_journal/utils/tracker_service.dart';
import 'package:gym_journal/utils/color_helpers.dart';

class SubCategoryDetailScreen extends StatelessWidget {
  final SubCategory subCategory;

  const SubCategoryDetailScreen({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategory.title),
        backgroundColor: subCategory.color,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [subCategory.color, subCategory.color.withOpacityCompat(0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (subCategory.assetPath != null)
                    SizedBox(
                      height: 72,
                      child: Hero(
                        tag: 'sub_${subCategory.id}',
                        child: SvgPicture.asset(
                          subCategory.assetPath!,
                          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    )
                  else
                    Hero(tag: 'sub_${subCategory.id}', child: Icon(subCategory.icon, size: 72, color: Colors.white)),
                  const SizedBox(height: 12),
                  Text(
                    subCategory.title,
                    style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            StatefulBuilder(builder: (context, setState) {
              return FutureBuilder<bool>(
                future: TrackerService().isTracked(subCategory.id),
                builder: (context, snapshot) {
                  final tracked = snapshot.data ?? false;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(tracked ? 'Tracked' : 'Track', style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(width: 8),
                      Switch(
                        value: tracked,
                        onChanged: (v) async {
                          await TrackerService().setTracked(subCategory.id, v);
                          setState(() {});
                        },
                      ),
                    ],
                  );
                },
              );
            }),
            const SizedBox(height: 16),
            Text(
              subCategory.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'How to use',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Follow the recommended structure: warm up, main session, cool down. Track RPE and progress each week.',
            ),
            const SizedBox(height: 16),
            const Text(
              'Notes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Consistency is key. Adjust intensity based on recovery and goals. Consult a professional for personalized plans.',
            ),
          ],
        ),
      ),
    );
  }
}
