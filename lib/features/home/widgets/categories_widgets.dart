part of '../home.dart';

class CategoriesWidget extends StatelessWidget {
  final List<CategoryEntity> categories;
  const CategoriesWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        categories.length,
        (index) => CategoryWidget(
          category: categories[index],
        ),
      ),
    );
  }
}
