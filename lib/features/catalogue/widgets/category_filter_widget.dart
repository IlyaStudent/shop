part of '../catalogue.dart';

class CategoryFilterWidget extends StatelessWidget {
  final CategoryEntity category;
  final bool isActive;
  final ValueChanged<CategoryEntity> onCategoryTap;
  const CategoryFilterWidget({
    super.key,
    required this.category,
    required this.isActive,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: GestureDetector(
        onTap: () => onCategoryTap(category),
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AppColors.primary),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Row(
              children: [
                Icon(
                  category.icon,
                  color: isActive ? AppColors.white : AppColors.main,
                ),
                Text(
                  category.name,
                  style: TextStyle(
                    color: isActive ? AppColors.white : AppColors.black,
                    fontWeight: isActive ? FontWeight.w500 : FontWeight.w300,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
