part of '../home.dart';

class StocksWidget extends StatelessWidget {
  final List<StockEntity> stocks;
  const StocksWidget({
    super.key,
    required this.stocks,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            stocks.length,
            (index) => StockWidget(
              stock: stocks[index],
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        // height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        aspectRatio: 16 / 9,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
