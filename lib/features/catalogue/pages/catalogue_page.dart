part of '../catalogue.dart';

@RoutePage()
class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CatalogueElementaryWidget(),
    );
  }
}
