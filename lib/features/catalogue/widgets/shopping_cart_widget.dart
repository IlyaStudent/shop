part of '../catalogue.dart';

class ShoppingCartWidget extends StatelessWidget {
  final Map<ProductEntity, int> shoppingCart;
  final double cartSum;
  const ShoppingCartWidget({
    super.key,
    required this.shoppingCart,
    required this.cartSum,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth,
      height: 48,
      decoration: const BoxDecoration(
        color: AppColors.main,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.shopping_basket_outlined,
                  color: AppColors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  " ${LocalizationCosts.inCart} ${shoppingCart.keys.length}",
                  style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 17.6 / 16,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "$cartSum ${LocalizationCosts.rubles}",
                  style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 24 / 16,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
