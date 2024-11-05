part of '../home.dart';

class StockWidget extends StatelessWidget {
  final StockEntity stock;
  const StockWidget({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            offset: Offset(2, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            stock.imagePath,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 4,
            ),
            child: Text(
              "${LocalizationCosts.from} ${stock.beginDate.day}.${LocalizationCosts.monthNames[stock.beginDate.month]} ${LocalizationCosts.to} ${stock.endDate.day}.${LocalizationCosts.monthNames[stock.endDate.month]}",
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                height: 20 / 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              bottom: 16,
            ),
            child: Text(
              stock.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 28 / 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
