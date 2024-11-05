part of '../catalogue.dart';

class PopularityWidget extends StatelessWidget {
  final int popularity;

  const PopularityWidget({
    super.key,
    required this.popularity,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = popularity >= 3 ? AppColors.main : AppColors.primary;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        4,
        (index) {
          final isActive = popularity >= index + 1;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.5),
            child: Container(
              width: 2,
              height: (6 + index).toDouble(),
              decoration: BoxDecoration(
                color: isActive ? activeColor : AppColors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        },
      ),
    );
  }
}
