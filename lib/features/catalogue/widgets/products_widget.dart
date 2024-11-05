part of '../catalogue.dart';

class ProductsWidget extends StatelessWidget {
  final List<ProductEntity> products;
  final ValueChanged<ProductEntity> addAction;
  final ValueChanged<ProductEntity> removeAction;
  final Map<ProductEntity, int> shoppingCart;
  const ProductsWidget({
    super.key,
    required this.products,
    required this.addAction,
    required this.removeAction,
    required this.shoppingCart,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 24,
        runSpacing: 24,
        children: List.generate(
          products.length,
          (index) {
            return ProductWidget(
              product: products[index],
              productAmount: (shoppingCart[products[index]] ?? 0).toDouble(),
              addAction: addAction,
              removeAction: removeAction,
            );
          },
        ),
      ),
    );
  }
}
