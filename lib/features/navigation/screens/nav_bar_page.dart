part of '../navigation.dart';

@RoutePage()
class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        CatalogueRoute(),
      ],
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          leading: null,
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(94),
            child: CustomAppBar(),
          ),
        ),
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => context.autoTabsRouter.setActiveIndex(index),
          currentIndex: context.autoTabsRouter.activeIndex,
          selectedItemColor: AppColors.main,
          unselectedItemColor: AppColors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: LocalizationCosts.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
              ),
              label: LocalizationCosts.catalogue,
            ),
          ],
        ),
      ),
    );
  }
}
