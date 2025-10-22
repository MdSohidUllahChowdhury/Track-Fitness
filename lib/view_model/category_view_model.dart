import 'package:gym_journal/model/category.dart';
import 'package:gym_journal/model/sample_data.dart';

class CategoryViewModel {
  List<Category> get categories => sampleCategories;

  Category? findCategoryByTitle(String title) {
    try {
      return categories.firstWhere((c) => c.title == title);
    } catch (_) {
      return null;
    }
  }
}
