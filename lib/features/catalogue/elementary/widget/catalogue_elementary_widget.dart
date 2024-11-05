part of '../../catalogue.dart';

class CatalogueElementaryWidget
    extends ElementaryWidget<ICatalogueWidgetModel> {
  const CatalogueElementaryWidget({
    WidgetModelFactory wm = widgetModelFactory,
    Key? key,
  }) : super(wm, key: key);

  @override
  Widget build(ICatalogueWidgetModel wm) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.valueState,
      builder: (context, state) {
        if (state?.products != null && state?.categories != null) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        LocalizationCosts.catalogue,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    CategoriesFilterWidget(
                      categories: state!.categories,
                      activeCategory: state.category,
                      onCategoryTap: (CategoryEntity category) =>
                          wm.setActiveFilterCategory(category),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 24, bottom: 56),
                      child: ProductsWidget(
                        products: state.products,
                        addAction: (ProductEntity product) =>
                            wm.addToCart(product),
                        removeAction: (ProductEntity product) =>
                            wm.removeFromCart(product),
                        shoppingCart: state.shoppingCart,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: state.cartSum > 0
                    ? ShoppingCartWidget(
                        shoppingCart: state.shoppingCart,
                        cartSum: state.cartSum,
                      )
                    : const SizedBox(),
              )
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
