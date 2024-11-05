part of '../home.dart';

class ShowMoreWidget extends StatelessWidget {
  final VoidCallback? showMore;
  const ShowMoreWidget({super.key, this.showMore});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showMore,
      child: Container(
        width: 156,
        height: 270,
        color: AppColors.secondary,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.arrow_circle_right_outlined,
                color: AppColors.primary,
                size: 40,
              ),
            ),
            Text(
              LocalizationCosts.showMore,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                height: 20 / 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
