part of '../catalogue.dart';

class ProductWidget extends StatelessWidget {
  final ProductEntity product;
  final double productAmount;
  final ValueChanged<ProductEntity> addAction;
  final ValueChanged<ProductEntity> removeAction;
  const ProductWidget({
    super.key,
    required this.product,
    required this.productAmount,
    required this.addAction,
    required this.removeAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Image.asset(
                product.imagePath,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_outline,
                  color: AppColors.primary,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: PopularityWidget(
                  popularity: product.popularity,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 16,
                  bottom: 10,
                ),
                child: Text(
                  product.name,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: product.name.length > 10 ? 12 : 16,
                    height: product.name.length > 10 ? 16 / 12 : 24 / 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  bottom: 4,
                ),
                child: Text(
                  "${product.price} ${LocalizationCosts.rubles}/${product.measurementUnit}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.primary,
                    height: 20 / 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: Text(
                  "${product.oldPrice} ${LocalizationCosts.rubles}/${product.measurementUnit}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: AppColors.borderColor,
                    height: 16 / 12,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.borderColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 14,
                  bottom: 22,
                ),
                child: (productAmount > 0)
                    ? Container(
                        width: 124,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: AppColors.primary,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => removeAction(product),
                                child: const Icon(
                                  Icons.remove,
                                  size: 18,
                                  color: AppColors.black,
                                ),
                              ),
                              Text(
                                " $productAmount ${product.measurementUnit}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => addAction(product),
                                child: const Icon(
                                  Icons.add,
                                  size: 18,
                                  color: AppColors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => addAction(product),
                        child: Container(
                          width: 124,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primary,
                          ),
                          child: const Icon(
                            Icons.shopping_basket_outlined,
                            color: AppColors.white,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
