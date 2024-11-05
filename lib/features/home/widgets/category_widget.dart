part of '../home.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryEntity category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: SizedBox(
        height: 72,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              category.imagePath,
              height: 72,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 24,
                ),
                child: Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 24 / 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
