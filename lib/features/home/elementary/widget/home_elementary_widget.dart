part of '../../home.dart';

class HomeElementaryWidget extends ElementaryWidget<IHomeWidgetModel> {
  const HomeElementaryWidget({
    WidgetModelFactory wm = widgetModelFactory,
    Key? key,
  }) : super(wm, key: key);

  @override
  Widget build(IHomeWidgetModel wm) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.valueState,
      builder: (context, state) {
        if (state?.categories != null &&
            state?.products != null &&
            state?.stocks != null) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: TitleWidget(
                    text: LocalizationCosts.stocks,
                  ),
                ),
                StocksWidget(
                  stocks: state?.stocks ?? [],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget(
                        text: LocalizationCosts.popular,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductWidget(
                              product: state!.products.first,
                              productAmount: 0,
                              addAction: (ProductEntity value) {},
                              removeAction: (ProductEntity value) {},
                            ),
                            ShowMoreWidget(
                              showMore: () => context.router.push(
                                const CatalogueRoute(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TitleWidget(
                        text: LocalizationCosts.categories,
                      ),
                      CategoriesWidget(
                        categories: state.categories,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
