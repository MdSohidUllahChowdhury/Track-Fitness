import 'package:flutter/material.dart';
import 'package:gym_journal/view_model/category_view_model.dart';
import 'package:gym_journal/model/category.dart';
import 'package:gym_journal/view/category_detail_screen.dart';
import 'package:gym_journal/utils/color_helpers.dart';

class HomeScreen extends StatelessWidget {
  final CategoryViewModel viewModel = CategoryViewModel();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: Colors.white70)),
                        const SizedBox(height: 6),
                        Text('Your Fitness Hub',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white70),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search categories',
                              hintStyle: TextStyle(color: Colors.white60)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    itemCount: viewModel.categories.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: .78,
                    ),
                    itemBuilder: (context, index) {
                      final category = viewModel.categories[index];
                      return AnimatedCategoryCard(
                          category: category, index: index);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedCategoryCard extends StatefulWidget {
  final Category category;
  final int index;

  const AnimatedCategoryCard(
      {super.key, required this.category, required this.index});

  @override
  State<AnimatedCategoryCard> createState() => _AnimatedCategoryCardState();
}

class _AnimatedCategoryCardState extends State<AnimatedCategoryCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
    _scale = CurvedAnimation(parent: _ctrl, curve: Curves.easeOutBack);
    Future.delayed(
        Duration(milliseconds: 80 * widget.index), () => _ctrl.forward());
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scale,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => CategoryDetailScreen(category: widget.category)));
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.category.color.withOpacityCompat(0.95),
                widget.category.color.withOpacityCompat(0.75)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: widget.category.color.withAlpha((0.28 * 255).round()),
                  blurRadius: 10,
                  offset: const Offset(0, 6))
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: 'cat_${widget.category.title}',
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white24,
                      child: Icon(widget.category.icon,
                          size: 30, color: Colors.white))),
              const SizedBox(height: 12),
              Text(widget.category.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
              const SizedBox(height: 6),
              Text(widget.category.description,
                  style: const TextStyle(color: Colors.white70, fontSize: 13.0),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
