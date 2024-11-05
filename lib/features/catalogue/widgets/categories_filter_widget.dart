part of '../catalogue.dart';

class CategoriesFilterWidget extends StatelessWidget {
  final List<CategoryEntity> categories;
  final CategoryEntity? activeCategory;
  final ValueChanged<CategoryEntity> onCategoryTap;
  const CategoriesFilterWidget({
    super.key,
    required this.categories,
    required this.activeCategory,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryFilterWidget(
            category: categories[index],
            isActive: activeCategory == categories[index],
            onCategoryTap: onCategoryTap,
          ),
        ),
      ),
    );
  }
}
